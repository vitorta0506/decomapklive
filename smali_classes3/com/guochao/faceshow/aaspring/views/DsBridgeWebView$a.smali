.class Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;
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

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageCommitVisible(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->n(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;I)I

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->h(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->n:I

    .line 4
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    invoke-static {v0, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->h(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->n(Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;I)I

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iput v1, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->n:I

    .line 4
    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequest;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void

    .line 6
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    return-void
.end method

.method public onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1b
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onSafeBrowsingHit(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;ILandroid/webkit/SafeBrowsingResponse;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    return-void
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView$a;->a:Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;

    iget-object v0, v0, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->f:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
