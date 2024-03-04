.class public Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;
.super Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;
.source "SourceFile"


# instance fields
.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;->g:Z

    return-void
.end method

.method static synthetic a2(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;->g:Z

    return p0
.end method

.method static synthetic b2(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;->g:Z

    return p1
.end method

.method private c2()V
    .locals 5

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 2
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "https://mt.buzzcast.info/app/fc/status.json"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "%s?%s=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 7
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;

    invoke-direct {v2, p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;Lokhttp3/Call;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    new-instance v1, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->initView(Landroid/view/View;)V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;->c2()V

    return-void
.end method
