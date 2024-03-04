.class public Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$OAuthWebViewClient;,
        Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001d\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0003J\u0014\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\u00080\u0010H\u0014J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u0008\u0010\u0014\u001a\u00020\u000eH\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u000eH\u0002J\u0012\u0010\u0018\u001a\u00020\u000e2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\u0008\u0010\u001b\u001a\u00020\u000eH\u0014J\u0008\u0010\u001c\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;",
        "Landroid/app/Activity;",
        "()V",
        "params",
        "Lcom/vk/api/sdk/auth/VKAuthParams;",
        "progress",
        "Landroid/widget/ProgressBar;",
        "redirectUrl",
        "",
        "getRedirectUrl",
        "()Ljava/lang/String;",
        "webView",
        "Landroid/webkit/WebView;",
        "configureWebView",
        "",
        "getUrlParams",
        "",
        "handleSuccess",
        "uri",
        "Landroid/net/Uri;",
        "loadUrl",
        "needValidationResult",
        "",
        "notifyLockerAndFinish",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "showWebView",
        "Companion",
        "OAuthWebViewClient",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "VKWebViewAuthActivity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VK_EXTRA_AUTH_PARAMS:Ljava/lang/String; = "vk_auth_params"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final VK_EXTRA_VALIDATION_URL:Ljava/lang/String; = "vk_validation_url"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VK_RESULT_INTENT_NAME:Ljava/lang/String; = "com.vk.auth-token"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static validationResult:Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# instance fields
.field private params:Lcom/vk/api/sdk/auth/VKAuthParams;

.field private progress:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->Companion:Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getRedirectUrl(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->getRedirectUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getValidationResult$cp()Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;
    .locals 1

    sget-object v0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->validationResult:Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;

    return-object v0
.end method

.method public static final synthetic access$getWebView$p(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method public static final synthetic access$handleSuccess(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->handleSuccess(Landroid/net/Uri;)V

    return-void
.end method

.method public static final synthetic access$needValidationResult(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->needValidationResult()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$notifyLockerAndFinish(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->notifyLockerAndFinish()V

    return-void
.end method

.method public static final synthetic access$setValidationResult$cp(Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;)V
    .locals 0

    sput-object p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->validationResult:Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;

    return-void
.end method

.method public static final synthetic access$showWebView(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->showWebView()V

    return-void
.end method

.method private final configureWebView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    const-string/jumbo v2, "webView"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    .line 2
    :cond_0
    new-instance v3, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$OAuthWebViewClient;

    invoke-direct {v3, p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity$OAuthWebViewClient;-><init>(Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    const/4 v3, 0x4

    .line 4
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 6
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method private final getRedirectUrl()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->needValidationResult()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "vk_validation_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->params:Lcom/vk/api/sdk/auth/VKAuthParams;

    if-nez v0, :cond_1

    const-string v0, "params"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lcom/vk/api/sdk/auth/VKAuthParams;->getRedirectUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final handleSuccess(Landroid/net/Uri;)V
    .locals 3

    const-string v0, "access_token"

    .line 1
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "secret"

    .line 3
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user_id"

    .line 4
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5
    :goto_0
    new-instance v2, Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;

    invoke-direct {v2, v1, v0, p1}, Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 6
    :cond_1
    sget-object p1, Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;->Companion:Lcom/vk/api/sdk/VKApiValidationHandler$Credentials$Companion;

    invoke-virtual {p1}, Lcom/vk/api/sdk/VKApiValidationHandler$Credentials$Companion;->getEMPTY()Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;

    move-result-object v2

    .line 7
    :goto_1
    sput-object v2, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->validationResult:Lcom/vk/api/sdk/VKApiValidationHandler$Credentials;

    .line 8
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->notifyLockerAndFinish()V

    return-void
.end method

.method private final loadUrl()V
    .locals 4

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->needValidationResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "vk_validation_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is no vk_validation_url key inside"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "https://oauth.vk.com/authorize"

    .line 4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->getUrlParams()Ljava/util/Map;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{\n                val ur\u2026.toString()\n            }"

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :goto_1
    iget-object v1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_3

    const-string/jumbo v1, "webView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method private final needValidationResult()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "vk_validation_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final notifyLockerAndFinish()V
    .locals 1

    .line 1
    sget-object v0, Lcom/vk/api/sdk/utils/VKValidationLocker;->INSTANCE:Lcom/vk/api/sdk/utils/VKValidationLocker;

    invoke-virtual {v0}, Lcom/vk/api/sdk/utils/VKValidationLocker;->signal()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final showWebView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "progress"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_1

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected getUrlParams()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlin/Pair;

    .line 1
    iget-object v1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->params:Lcom/vk/api/sdk/auth/VKAuthParams;

    const/4 v2, 0x0

    const-string v3, "params"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/vk/api/sdk/auth/VKAuthParams;->getAppId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "client_id"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    .line 2
    iget-object v4, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->params:Lcom/vk/api/sdk/auth/VKAuthParams;

    if-nez v4, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_1
    invoke-virtual {v4}, Lcom/vk/api/sdk/auth/VKAuthParams;->getScopeString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "scope"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x2

    .line 3
    iget-object v4, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->params:Lcom/vk/api/sdk/auth/VKAuthParams;

    if-nez v4, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v4

    :goto_0
    invoke-virtual {v2}, Lcom/vk/api/sdk/auth/VKAuthParams;->getRedirectUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "redirect_uri"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "response_type"

    const-string/jumbo v3, "token"

    .line 4
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display"

    const-string v3, "mobile"

    .line 5
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 6
    invoke-static {}, Lcom/vk/api/sdk/VK;->getApiVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "v"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "revoke"

    const-string v3, "1"

    .line 7
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    .line 8
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/vk/api/sdk/R$layout;->vk_webview_auth_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    sget p1, Lcom/vk/api/sdk/R$id;->webView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.webView)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->webView:Landroid/webkit/WebView;

    .line 4
    sget p1, Lcom/vk/api/sdk/R$id;->progress:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(R.id.progress)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->progress:Landroid/widget/ProgressBar;

    .line 5
    sget-object p1, Lcom/vk/api/sdk/auth/VKAuthParams;->Companion:Lcom/vk/api/sdk/auth/VKAuthParams$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "vk_auth_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vk/api/sdk/auth/VKAuthParams$Companion;->fromBundle(Landroid/os/Bundle;)Lcom/vk/api/sdk/auth/VKAuthParams;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->needValidationResult()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 7
    :cond_0
    iput-object p1, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->params:Lcom/vk/api/sdk/auth/VKAuthParams;

    .line 8
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->configureWebView()V

    .line 9
    invoke-direct {p0}, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->loadUrl()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vk/api/sdk/ui/VKWebViewAuthActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "webView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 2
    sget-object v0, Lcom/vk/api/sdk/utils/VKValidationLocker;->INSTANCE:Lcom/vk/api/sdk/utils/VKValidationLocker;

    invoke-virtual {v0}, Lcom/vk/api/sdk/utils/VKValidationLocker;->signal()V

    .line 3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
