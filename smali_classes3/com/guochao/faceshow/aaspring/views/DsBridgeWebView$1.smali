.class Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->init()V
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "dsBridge"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEBUG ERR MSG:\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\\'"

    const-string v5, "\\\\\'"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "alert(\'%s\')"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->s(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
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

    const-string v1, "data"

    const-string v2, "_dscbstub"

    .line 2
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->e(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    .line 3
    aget-object v4, p1, v3

    .line 4
    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-static {v5}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x0

    aget-object p1, p1, v6

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "code"

    const/4 v8, -0x1

    .line 6
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->g(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    .line 8
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_0
    iget-object v8, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->g(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 10
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->t(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 11
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "Js bridge  called, but can\'t find a corresponded JavascriptInterface object , please check your code!"

    .line 12
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;->a(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 14
    :cond_2
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const/4 v9, 0x0

    if-eqz p2, :cond_3

    .line 16
    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, v9

    .line 17
    :goto_0
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x2

    :try_start_1
    new-array v11, v10, [Ljava/lang/Class;

    aput-object v0, v11, v6

    .line 19
    const-class v12, Lwendu/dsbridge/a;

    aput-object v12, v11, v3

    invoke-virtual {v8, v4, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    :try_start_2
    new-array v11, v3, [Ljava/lang/Class;

    aput-object v0, v11, v6

    .line 20
    invoke-virtual {v8, v4, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v0, 0x0

    :goto_1
    if-nez v9, :cond_4

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not find method \""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\" implementation! please check if the  signature or namespace of the method is right "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;->a(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 24
    :cond_4
    const-class v8, Landroid/webkit/JavascriptInterface;

    invoke-virtual {v9, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Landroid/webkit/JavascriptInterface;

    if-nez v8, :cond_5

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Method "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not invoked, since  it is not declared with JavascriptInterface annotation! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;->a(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 28
    :cond_5
    invoke-virtual {v9, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-eqz v0, :cond_6

    :try_start_3
    new-array v0, v10, [Ljava/lang/Object;

    aput-object v2, v0, v6

    .line 29
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1$a;

    invoke-direct {v1, p0, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1$a;-><init>(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;Ljava/lang/String;)V

    aput-object v1, v0, v3

    invoke-virtual {v9, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 30
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :try_start_4
    new-array p2, v3, [Ljava/lang/Object;

    aput-object v2, p2, v6

    .line 31
    invoke-virtual {v9, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 32
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 33
    invoke-virtual {v5, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v4, p1, v6

    const-string p2, "Call failed\uff1aThe parameter of \"%s\" in Java is invalid."

    .line 36
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;->a(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v4, p2, v6

    const-string v0, "The argument of \"%s\" must be a JSON object string!"

    .line 39
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 40
    invoke-direct {p0, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;->a(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 42
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
