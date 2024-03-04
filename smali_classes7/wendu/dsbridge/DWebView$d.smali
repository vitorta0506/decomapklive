.class Lwendu/dsbridge/DWebView$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwendu/dsbridge/DWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lwendu/dsbridge/DWebView;


# direct methods
.method constructor <init>(Lwendu/dsbridge/DWebView;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwendu/dsbridge/DWebView$d;->b:Lwendu/dsbridge/DWebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lwendu/dsbridge/DWebView$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lwendu/dsbridge/DWebView$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4
    iget-object v2, p0, Lwendu/dsbridge/DWebView$d;->b:Lwendu/dsbridge/DWebView;

    iget-object v2, v2, Lwendu/dsbridge/DWebView;->i:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwendu/dsbridge/b;

    if-eqz v2, :cond_7

    .line 5
    invoke-static {}, Lwendu/dsbridge/DWebView;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lwendu/dsbridge/b;->onValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lwendu/dsbridge/b;->onValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v1, :cond_7

    .line 10
    iget-object p1, p0, Lwendu/dsbridge/DWebView$d;->b:Lwendu/dsbridge/DWebView;

    iget-object p1, p1, Lwendu/dsbridge/DWebView;->i:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_2
    iget-object p1, p0, Lwendu/dsbridge/DWebView$d;->b:Lwendu/dsbridge/DWebView;

    invoke-static {p1}, Lwendu/dsbridge/DWebView;->e(Lwendu/dsbridge/DWebView;)Lwendu/dsbridge/DWebView$c;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lwendu/dsbridge/DWebView$d;->b:Lwendu/dsbridge/DWebView;

    .line 12
    invoke-static {p1}, Lwendu/dsbridge/DWebView;->e(Lwendu/dsbridge/DWebView;)Lwendu/dsbridge/DWebView$c;

    move-result-object p1

    invoke-interface {p1}, Lwendu/dsbridge/DWebView$c;->onClose()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 13
    :cond_3
    iget-object p1, p0, Lwendu/dsbridge/DWebView$d;->b:Lwendu/dsbridge/DWebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 14
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lwendu/dsbridge/DWebView$e;

    .line 15
    iget-object v0, p0, Lwendu/dsbridge/DWebView$d;->b:Lwendu/dsbridge/DWebView;

    iget-object v1, p1, Lwendu/dsbridge/DWebView$e;->a:Ljava/lang/String;

    iget-object p1, p1, Lwendu/dsbridge/DWebView$e;->b:Ljava/util/Map;

    invoke-static {v0, v1, p1}, Lwendu/dsbridge/DWebView;->d(Lwendu/dsbridge/DWebView;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 16
    :cond_5
    iget-object v0, p0, Lwendu/dsbridge/DWebView$d;->b:Lwendu/dsbridge/DWebView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lwendu/dsbridge/DWebView;->c(Lwendu/dsbridge/DWebView;Ljava/lang/String;)V

    goto :goto_1

    .line 17
    :cond_6
    iget-object v0, p0, Lwendu/dsbridge/DWebView$d;->b:Lwendu/dsbridge/DWebView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lwendu/dsbridge/DWebView;->b(Lwendu/dsbridge/DWebView;Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
