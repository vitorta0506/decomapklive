.class Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;->c2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/BaseSplashFragment;->U1()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1    # Lokhttp3/Call;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->a:Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;->b2(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment;Z)Z

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/guochao/faceshow/aaspring/modulars/welcome/a;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .param p1    # Lokhttp3/Call;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 1
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 4
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/utils/GsonGetter;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    const-class v2, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;

    invoke-virtual {p2, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->getData()Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean;->getData()Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/guochao/faceshow/aaspring/beans/PowOffBean$Bean;->getStatus()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/guochao/faceshow/utils/HandlerGetter;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;

    invoke-direct {v2, p0, p2}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b$a;-><init>(Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;Lcom/guochao/faceshow/aaspring/beans/PowOffBean;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :catch_0
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    if-eqz p2, :cond_4

    .line 9
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 10
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/modulars/welcome/SplashFragment$b;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void
.end method
