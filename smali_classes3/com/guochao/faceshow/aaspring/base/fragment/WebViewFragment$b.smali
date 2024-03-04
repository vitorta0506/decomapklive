.class Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    invoke-interface {p1, p2, p3, p4}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;->onLoadErr(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;->onLoadErr(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "about:blank"

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 4
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    new-instance v1, Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    iget-object v0, p1, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->access$100(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    iget-object p1, p1, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    invoke-interface {v0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;->onShouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/guochao/faceshow/aaspring/utils/UrlUtils;->checkPayoneerCallbackUrl(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/guochao/faceshow/aaspring/utils/PayoneerUtils;->getPayonnerLoginOrRegistRequest(Landroid/app/Activity;Ljava/util/List;Ljava/lang/String;)V

    return v2

    .line 6
    :cond_1
    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/UrlUtils;->shouldOpenOutside(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/guochao/faceshow/aaspring/utils/PackageUtils;->viewUri(Landroid/content/Context;Landroid/net/Uri;)V

    return v2

    .line 8
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "http"

    .line 10
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ftp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    .line 11
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 13
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v3, 0x10000

    .line 14
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;->a:Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    nop

    .line 16
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    .line 17
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    return p1

    :cond_6
    return v2
.end method
