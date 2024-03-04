.class Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->addInternalJavascriptObject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$2;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closePage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p1, Landroid/os/Message;->what:I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$2;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->g:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public disableJavascriptDialogBlock(Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$2;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    const-string v1, "disable"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->j(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Z)Z

    return-void
.end method

.method public dsinit(Ljava/lang/Object;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$2;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-static {p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->k(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)V

    return-void
.end method

.method public hasNativeMethod(Ljava/lang/Object;)Z
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "name"

    .line 2
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$2;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-static {v2, v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->e(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$2;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-static {v2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 7
    :try_start_0
    aget-object v6, v1, v5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    aput-object v0, v7, v3

    const-class v8, Lwendu/dsbridge/a;

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    .line 8
    :catch_0
    :try_start_1
    aget-object v1, v1, v5

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v0, v6, v3

    invoke-virtual {v2, v1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 9
    const-class v1, Landroid/webkit/JavascriptInterface;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Landroid/webkit/JavascriptInterface;

    if-eqz v1, :cond_2

    const-string v1, "all"

    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    const-string v1, "asyn"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez v0, :cond_2

    const-string v0, "syn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return v5

    :cond_2
    return v3
.end method

.method public returnValue(Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    .line 3
    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "id"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const-string v1, "complete"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    const-string v1, "data"

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$2;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->g:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
