.class public final Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;
.super Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0011\u001a\u00020\u0004J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J\u0012\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u001a\u0010\u0018\u001a\u00020\u00152\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0016\u001a\u00020\u0017H\u0003J\u0008\u0010\u0019\u001a\u00020\u0015H\u0014J\u0012\u0010\u001a\u001a\u00020\u00152\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0012\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;",
        "Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;",
        "()V",
        "mJSAction",
        "",
        "getMJSAction",
        "()Ljava/lang/Object;",
        "setMJSAction",
        "(Ljava/lang/Object;)V",
        "mWebViewClient",
        "Landroid/webkit/WebViewClient;",
        "webView",
        "Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;",
        "getWebView",
        "()Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;",
        "setWebView",
        "(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;)V",
        "getJSAction",
        "getLayoutId",
        "",
        "initView",
        "",
        "view",
        "Landroid/view/View;",
        "initWebView",
        "loadData",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateDialog",
        "Landroid/app/Dialog;",
        "app_GooglePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mJSAction:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mWebViewClient:Landroid/webkit/WebViewClient;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public webView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private final initWebView(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->getJSAction()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    if-eqz v1, :cond_0

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    invoke-virtual {v1, p2}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;->setPopAnchorView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_3

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
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz p2, :cond_2

    .line 9
    invoke-virtual {p1, p2}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    if-eqz p2, :cond_3

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.guochao.faceshow.aaspring.base.fragment.WebViewFragment.OnWebViewBindListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;

    invoke-interface {p2, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/WebViewFragment$d;->onBindWebView(Landroid/webkit/WebView;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final getJSAction()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->mJSAction:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/guochao/faceshow/web/jsinterface/HalloweenJSAction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->mJSAction:Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->mJSAction:Ljava/lang/Object;

    const-string v1, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    const v0, 0x7f0d01cb

    return v0
.end method

.method public final getMJSAction()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->mJSAction:Ljava/lang/Object;

    return-object v0
.end method

.method public final getWebView()Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->webView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const v0, 0x7f0a0e43

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.web_view)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    invoke-virtual {p0, v0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->setWebView(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;)V

    .line 2
    new-instance v0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment$initView$1;

    invoke-direct {v0, p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment$initView$1;-><init>(Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;)V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 3
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->getWebView()Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->initWebView(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected loadData()V
    .locals 2

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->getWebView()Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/guochao/faceshow/utils/WebViewUrlTools;->getLocalWebUrl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/guochao/faceshow/aaspring/views/DsBridgeWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, -0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->setParamsHeight(I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/base/fragment/BaseDialogFragment;->createCenterDialog()Lcom/guochao/faceshow/aaspring/base/dialog/FaceCastDialog;

    move-result-object p1

    const-string v0, "createCenterDialog()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final setMJSAction(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->mJSAction:Ljava/lang/Object;

    return-void
.end method

.method public final setWebView(Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/modulars/login/fragment/RecaptchaDialogFragment;->webView:Lcom/guochao/faceshow/aaspring/views/FaceCastWebView;

    return-void
.end method
