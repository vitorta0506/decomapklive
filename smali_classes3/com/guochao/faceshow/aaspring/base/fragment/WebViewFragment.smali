.class public Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WebViewFragment"


# instance fields
.field protected mJSAction:Ljava/lang/Object;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field protected mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->initWebView(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;Landroid/view/View;)V

    return-void
.end method

.method public static getInstance(ILandroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;)Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;
    .locals 3
    .param p0    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    .line 3
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "title"

    .line 4
    invoke-virtual {v1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 7
    const-class p2, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, v0, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 8
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object v0
.end method

.method private initWebView(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->getJSAction()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->setPopAnchorView(Landroid/view/View;)V

    :cond_0
    const-string p2, "halloween"

    .line 4
    invoke-virtual {p1, v0, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, v0, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->o(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    .line 8
    :cond_1
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 9
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 10
    new-instance p2, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$c;

    invoke-direct {p2, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$c;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    if-eqz p2, :cond_2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    invoke-interface {p2, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;->onBindWebView(Landroid/webkit/WebView;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getJSAction()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mJSAction:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mJSAction:Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mJSAction:Ljava/lang/Object;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d00d0

    return v0
.end method

.method public getWebView()Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$a;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$b;-><init>(Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->initWebView(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;Landroid/view/View;)V

    return-void
.end method

.method public loadData()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mUrl:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mTitle:Ljava/lang/String;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    const/16 v1, 0x64

    invoke-static {v1}, Lcom/guochao/faceshow/utils/WebViewUrlTools;->getLocalWebUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/faceshow/aaspring/utils/StringUtils;->convertKeywordLoadOrSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mUrl:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {v1, v0}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WebViewFragment"

    const-string v2, "an error occurred while onQuitLiveRoom webview "

    .line 5
    invoke-static {v1, v2, v0}, Lcom/guochao/faceshow/aaspring/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    :goto_0
    invoke-super {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 3
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment;->mWebView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onResume()"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->s(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
