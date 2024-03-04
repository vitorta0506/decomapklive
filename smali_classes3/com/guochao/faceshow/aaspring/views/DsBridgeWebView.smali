.class public Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$d;,
        Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$f;,
        Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;
    }
.end annotation


# static fields
.field private static r:Z = false


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

.field private e:Ljava/lang/String;

.field f:Landroid/webkit/WebViewClient;

.field g:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;

.field private volatile h:Z

.field private i:Lwendu/dsbridge/DWebView$c;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$d;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lwendu/dsbridge/b;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroid/graphics/drawable/ClipDrawable;

.field private m:Landroid/webkit/WebViewClient;

.field n:I

.field private o:Landroid/webkit/WebChromeClient;

.field p:Landroid/animation/ObjectAnimator;

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->a:Ljava/util/Map;

    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->c:I

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->g:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->h:Z

    .line 17
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->i:Lwendu/dsbridge/DWebView$c;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->j:Ljava/util/ArrayList;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->k:Ljava/util/Map;

    .line 20
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->m:Landroid/webkit/WebViewClient;

    .line 21
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->o:Landroid/webkit/WebChromeClient;

    .line 22
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->a:Ljava/util/Map;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->c:I

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->g:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->h:Z

    .line 6
    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->i:Lwendu/dsbridge/DWebView$c;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->j:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->k:Ljava/util/Map;

    .line 9
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;-><init>(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->m:Landroid/webkit/WebViewClient;

    .line 10
    new-instance p1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$b;-><init>(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->o:Landroid/webkit/WebChromeClient;

    .line 11
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->init()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->l(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private addInternalJavascriptObject()V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$2;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$2;-><init>(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)V

    const-string v1, "_dsb"

    invoke-virtual {p0, v0, v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Lwendu/dsbridge/DWebView$c;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->i:Lwendu/dsbridge/DWebView$c;

    return-object p0
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->u(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic g(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->h:Z

    return p0
.end method

.method static synthetic j(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->h:Z

    return p1
.end method

.method static synthetic k(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->r()V

    return-void
.end method

.method static synthetic l(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic m(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)I
    .locals 0

    iget p0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->q:I

    return p0
.end method

.method static synthetic n(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;I)I
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->q:I

    return p1
.end method

.method private q(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$d;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$d;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "window._handleMessageFromNative(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->s(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized r()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$d;

    .line 2
    invoke-direct {p0, v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->q(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$d;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->j:Ljava/util/ArrayList;
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

.method public static setWebContentsDebuggingEnabled(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 2
    sput-boolean p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->r:Z

    return-void
.end method

.method public static t(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "facecast.live"

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "facecast.xyz"

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "buzzcast.info"

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "gchao.com"

    .line 6
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "gchao.cn"

    .line 7
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "fwqlt.com"

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "vvvps.com"

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private u(Ljava/lang/String;)[Ljava/lang/String;
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

    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->b:Ljava/lang/String;

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
    invoke-virtual {p0, v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->p(Ljava/io/File;)V

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->p(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method init()V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/guochao/lib_base/R$drawable;->web_view_progress:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->l:Landroid/graphics/drawable/ClipDrawable;

    .line 4
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;-><init>(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->g:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/webcache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 8
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v3, 0x2

    .line 11
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 12
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 13
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 14
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 15
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 16
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 17
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 19
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 20
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 21
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 22
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 23
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 24
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->o:Landroid/webkit/WebChromeClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 25
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->m:Landroid/webkit/WebViewClient;

    invoke-super {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 26
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->addInternalJavascriptObject()V

    .line 27
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$1;-><init>(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;)V

    const-string v1, "_dsbridge"

    invoke-super {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 4
    iput v1, v0, Landroid/os/Message;->what:I

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->g:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
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

    .line 7
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 8
    iput v1, v0, Landroid/os/Message;->what:I

    .line 9
    new-instance v1, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$f;

    invoke-direct {v1, p1, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$f;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->g:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public o(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->q:I

    if-lez v0, :cond_0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->l:Landroid/graphics/drawable/ClipDrawable;

    iget v2, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->q:I

    mul-int/lit8 v2, v2, 0x64

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->l:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->l:Landroid/graphics/drawable/ClipDrawable;

    if-eqz p2, :cond_0

    const/high16 p3, 0x40000000    # 2.0f

    .line 3
    invoke-static {p3}, Lcom/guochao/faceshow/utils/DensityUtil;->dp2px(F)I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p4, p1, p3}, Landroid/graphics/drawable/ClipDrawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method public p(Ljava/io/File;)V
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

    invoke-virtual {p0, v2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->p(Ljava/io/File;)V

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

.method public s(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->a(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->g:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public setJavascriptCloseWindowListener(Lwendu/dsbridge/DWebView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->i:Lwendu/dsbridge/DWebView$c;

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->d:Landroid/webkit/WebChromeClient;

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .param p1    # Landroid/webkit/WebViewClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    return-void
.end method

.method public v(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->n:I

    if-eq v0, p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->p:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->p:Landroid/animation/ObjectAnimator;

    .line 5
    :cond_0
    new-instance v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$c;

    const-class v1, Ljava/lang/Float;

    const-string v2, "progress"

    invoke-direct {v0, p0, v1, v2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$c;-><init>(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->q:I

    int-to-float v3, v3

    aput v3, v1, v2

    const/4 v2, 0x1

    int-to-float v3, p1

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->p:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x50

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->p:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->p:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 9
    iput p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->n:I

    :cond_1
    return-void
.end method

.method protected w(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected x(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
