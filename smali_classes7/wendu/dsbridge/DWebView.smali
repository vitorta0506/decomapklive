.class public Lwendu/dsbridge/DWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwendu/dsbridge/DWebView$b;,
        Lwendu/dsbridge/DWebView$c;,
        Lwendu/dsbridge/DWebView$e;,
        Lwendu/dsbridge/DWebView$d;
    }
.end annotation


# static fields
.field private static k:Z = false


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field c:I

.field d:Landroid/webkit/WebChromeClient;

.field e:Lwendu/dsbridge/DWebView$d;

.field private volatile f:Z

.field private g:Lwendu/dsbridge/DWebView$c;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lwendu/dsbridge/DWebView$b;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lwendu/dsbridge/b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/webkit/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 11
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lwendu/dsbridge/DWebView;->a:Ljava/util/Map;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lwendu/dsbridge/DWebView;->c:I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lwendu/dsbridge/DWebView;->e:Lwendu/dsbridge/DWebView$d;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lwendu/dsbridge/DWebView;->f:Z

    .line 16
    iput-object p1, p0, Lwendu/dsbridge/DWebView;->g:Lwendu/dsbridge/DWebView$c;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lwendu/dsbridge/DWebView;->h:Ljava/util/ArrayList;

    .line 18
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lwendu/dsbridge/DWebView;->i:Ljava/util/Map;

    .line 19
    new-instance p1, Lwendu/dsbridge/DWebView$a;

    invoke-direct {p1, p0}, Lwendu/dsbridge/DWebView$a;-><init>(Lwendu/dsbridge/DWebView;)V

    iput-object p1, p0, Lwendu/dsbridge/DWebView;->j:Landroid/webkit/WebChromeClient;

    .line 20
    invoke-virtual {p0}, Lwendu/dsbridge/DWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lwendu/dsbridge/DWebView;->a:Ljava/util/Map;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lwendu/dsbridge/DWebView;->c:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lwendu/dsbridge/DWebView;->e:Lwendu/dsbridge/DWebView$d;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lwendu/dsbridge/DWebView;->f:Z

    .line 6
    iput-object p1, p0, Lwendu/dsbridge/DWebView;->g:Lwendu/dsbridge/DWebView$c;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lwendu/dsbridge/DWebView;->h:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lwendu/dsbridge/DWebView;->i:Ljava/util/Map;

    .line 9
    new-instance p1, Lwendu/dsbridge/DWebView$a;

    invoke-direct {p1, p0}, Lwendu/dsbridge/DWebView$a;-><init>(Lwendu/dsbridge/DWebView;)V

    iput-object p1, p0, Lwendu/dsbridge/DWebView;->j:Landroid/webkit/WebChromeClient;

    .line 10
    invoke-virtual {p0}, Lwendu/dsbridge/DWebView;->init()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lwendu/dsbridge/DWebView;->l(Lwendu/dsbridge/DWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private addInternalJavascriptObject()V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lwendu/dsbridge/DWebView$2;

    invoke-direct {v0, p0}, Lwendu/dsbridge/DWebView$2;-><init>(Lwendu/dsbridge/DWebView;)V

    const-string v1, "_dsb"

    invoke-virtual {p0, v0, v1}, Lwendu/dsbridge/DWebView;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lwendu/dsbridge/DWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lwendu/dsbridge/DWebView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lwendu/dsbridge/DWebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lwendu/dsbridge/DWebView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic e(Lwendu/dsbridge/DWebView;)Lwendu/dsbridge/DWebView$c;
    .locals 0

    iget-object p0, p0, Lwendu/dsbridge/DWebView;->g:Lwendu/dsbridge/DWebView$c;

    return-object p0
.end method

.method static synthetic f()Z
    .locals 1

    sget-boolean v0, Lwendu/dsbridge/DWebView;->k:Z

    return v0
.end method

.method static synthetic g(Lwendu/dsbridge/DWebView;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lwendu/dsbridge/DWebView;->r(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lwendu/dsbridge/DWebView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lwendu/dsbridge/DWebView;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic i(Lwendu/dsbridge/DWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lwendu/dsbridge/DWebView;->f:Z

    return p0
.end method

.method static synthetic j(Lwendu/dsbridge/DWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lwendu/dsbridge/DWebView;->f:Z

    return p1
.end method

.method static synthetic k(Lwendu/dsbridge/DWebView;)V
    .locals 0

    invoke-direct {p0}, Lwendu/dsbridge/DWebView;->p()V

    return-void
.end method

.method static synthetic l(Lwendu/dsbridge/DWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private o(Lwendu/dsbridge/DWebView$b;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lwendu/dsbridge/DWebView$b;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "window._handleMessageFromNative(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lwendu/dsbridge/DWebView;->q(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized p()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lwendu/dsbridge/DWebView;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwendu/dsbridge/DWebView$b;

    .line 2
    invoke-direct {p0, v1}, Lwendu/dsbridge/DWebView;->o(Lwendu/dsbridge/DWebView$b;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lwendu/dsbridge/DWebView;->h:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private r(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2e

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 2
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v1

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    return-object v0
.end method

.method public static setWebContentsDebuggingEnabled(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 2
    sput-boolean p0, Lwendu/dsbridge/DWebView;->k:Z

    return-void
.end method


# virtual methods
.method public clearCache(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 2
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    :try_start_0
    const-string v0, "webview.db"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "webviewCache.db"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lwendu/dsbridge/DWebView;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/webviewCache"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0, v1}, Lwendu/dsbridge/DWebView;->n(Ljava/io/File;)V

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0, v0}, Lwendu/dsbridge/DWebView;->n(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method init()V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    new-instance v0, Lwendu/dsbridge/DWebView$d;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lwendu/dsbridge/DWebView$d;-><init>(Lwendu/dsbridge/DWebView;Landroid/app/Activity;)V

    iput-object v0, p0, Lwendu/dsbridge/DWebView;->e:Lwendu/dsbridge/DWebView$d;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/webcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwendu/dsbridge/DWebView;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 5
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 7
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 8
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const/4 v2, 0x2

    .line 9
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 13
    iget-object v2, p0, Lwendu/dsbridge/DWebView;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 15
    iget-object v0, p0, Lwendu/dsbridge/DWebView;->j:Landroid/webkit/WebChromeClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 16
    invoke-direct {p0}, Lwendu/dsbridge/DWebView;->addInternalJavascriptObject()V

    .line 17
    new-instance v0, Lwendu/dsbridge/DWebView$1;

    invoke-direct {v0, p0}, Lwendu/dsbridge/DWebView$1;-><init>(Lwendu/dsbridge/DWebView;)V

    const-string v1, "_dsbridge"

    invoke-super {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Landroid/os/Message;->what:I

    .line 3
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lwendu/dsbridge/DWebView;->e:Lwendu/dsbridge/DWebView$d;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 6
    iput v1, v0, Landroid/os/Message;->what:I

    .line 7
    new-instance v1, Lwendu/dsbridge/DWebView$e;

    invoke-direct {v1, p0, p1, p2}, Lwendu/dsbridge/DWebView$e;-><init>(Lwendu/dsbridge/DWebView;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lwendu/dsbridge/DWebView;->e:Lwendu/dsbridge/DWebView$d;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public m(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lwendu/dsbridge/DWebView;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public n(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 7
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lwendu/dsbridge/DWebView;->n(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete file no exists "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Webview"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lwendu/dsbridge/DWebView;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lwendu/dsbridge/DWebView;->e:Lwendu/dsbridge/DWebView$d;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public setJavascriptCloseWindowListener(Lwendu/dsbridge/DWebView$c;)V
    .locals 0

    iput-object p1, p0, Lwendu/dsbridge/DWebView;->g:Lwendu/dsbridge/DWebView$c;

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    iput-object p1, p0, Lwendu/dsbridge/DWebView;->d:Landroid/webkit/WebChromeClient;

    return-void
.end method
