.class Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;->a:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 3
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v4, 0x2

    if-eq v2, v4, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    const/4 v0, 0x5

    if-eq v2, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5
    iget-object v2, v1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->k:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwendu/dsbridge/b;

    if-eqz v2, :cond_7

    .line 6
    invoke-static {}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v4}, Lwendu/dsbridge/b;->onValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    :try_start_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v4}, Lwendu/dsbridge/b;->onValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v3, :cond_7

    .line 11
    iget-object p1, v1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->k:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_2
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->c(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Lwendu/dsbridge/DWebView$c;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->c(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Lwendu/dsbridge/DWebView$c;

    move-result-object p1

    invoke-interface {p1}, Lwendu/dsbridge/DWebView$c;->onClose()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    :cond_3
    instance-of p1, v0, Landroid/app/Activity;

    if-eqz p1, :cond_7

    .line 15
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$f;

    .line 17
    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$f;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$f;->b:Ljava/util/Map;

    invoke-virtual {v1, v0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->x(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 18
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 19
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->b(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
