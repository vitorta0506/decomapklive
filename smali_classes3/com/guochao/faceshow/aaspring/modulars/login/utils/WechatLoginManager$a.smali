.class public Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/modulars/login/utils/WechatLoginManager;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const/4 v7, -0x1

    if-nez v1, :cond_2

    const-string p1, "api empty"

    .line 5
    invoke-virtual {v0, v7, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    return-void

    :cond_2
    const-string v2, "code"

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    const-string p1, "api error"

    .line 7
    invoke-virtual {v0, v2, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    return-void

    .line 8
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const-string v4, "openid"

    const-string v8, "json error"

    const-string v5, "result"

    if-eq v2, v3, :cond_5

    const/4 v1, 0x4

    if-eq v2, v1, :cond_4

    goto/16 :goto_0

    .line 9
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 10
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;

    invoke-direct {p1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;-><init>()V

    .line 13
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->j(Ljava/lang/String;)V

    const-string v2, "headimgurl"

    .line 14
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->i(Ljava/lang/String;)V

    const-string v2, "nickname"

    .line 15
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->h(Ljava/lang/String;)V

    const-string v2, "sex"

    .line 16
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l$d;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 18
    invoke-virtual {v0, v7, v8}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_5
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "unionid"

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "access_token"

    .line 22
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "refresh_token"

    .line 23
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "scope"

    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    .line 25
    invoke-virtual/range {v1 .. v6}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 26
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WechatLoginManager"

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v7, v8}, Lcom/guochao/faceshow/aaspring/modulars/login/utils/l;->e(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
