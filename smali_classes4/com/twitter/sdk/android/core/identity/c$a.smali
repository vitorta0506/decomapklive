.class Lcom/twitter/sdk/android/core/identity/c$a;
.super Lcom/twitter/sdk/android/core/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/core/identity/c;->l()Lcom/twitter/sdk/android/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/b<",
        "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/identity/c;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/identity/c;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/c$a;->a:Lcom/twitter/sdk/android/core/identity/c;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to get request token"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/g;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object p1, p0, Lcom/twitter/sdk/android/core/identity/c$a;->a:Lcom/twitter/sdk/android/core/identity/c;

    new-instance v0, Lcom/twitter/sdk/android/core/TwitterAuthException;

    invoke-direct {v0, v2}, Lcom/twitter/sdk/android/core/TwitterAuthException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/twitter/sdk/android/core/identity/c;->h(ILcom/twitter/sdk/android/core/TwitterAuthException;)V

    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/i;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/i<",
            "Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c$a;->a:Lcom/twitter/sdk/android/core/identity/c;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/i;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->authToken:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iput-object p1, v0, Lcom/twitter/sdk/android/core/identity/c;->b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 2
    invoke-static {v0}, Lcom/twitter/sdk/android/core/identity/c;->c(Lcom/twitter/sdk/android/core/identity/c;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    move-result-object p1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c$a;->a:Lcom/twitter/sdk/android/core/identity/c;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/c;->b:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-virtual {p1, v0}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->i(Lcom/twitter/sdk/android/core/TwitterAuthToken;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/l;->g()Lcom/twitter/sdk/android/core/g;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Redirecting user to web view to complete authorization flow"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/c$a;->a:Lcom/twitter/sdk/android/core/identity/c;

    invoke-static {v0}, Lcom/twitter/sdk/android/core/identity/c;->d(Lcom/twitter/sdk/android/core/identity/c;)Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/twitter/sdk/android/core/identity/f;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/identity/c$a;->a:Lcom/twitter/sdk/android/core/identity/c;

    .line 5
    invoke-static {v3}, Lcom/twitter/sdk/android/core/identity/c;->c(Lcom/twitter/sdk/android/core/identity/c;)Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/sdk/android/core/identity/c$a;->a:Lcom/twitter/sdk/android/core/identity/c;

    invoke-static {v4}, Lcom/twitter/sdk/android/core/identity/c;->e(Lcom/twitter/sdk/android/core/identity/c;)Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth1aService;->g(Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/sdk/android/core/identity/c$a;->a:Lcom/twitter/sdk/android/core/identity/c;

    invoke-direct {v2, v3, v4}, Lcom/twitter/sdk/android/core/identity/f;-><init>(Ljava/lang/String;Lcom/twitter/sdk/android/core/identity/f$a;)V

    new-instance v3, Lcom/twitter/sdk/android/core/identity/e;

    invoke-direct {v3}, Lcom/twitter/sdk/android/core/identity/e;-><init>()V

    .line 6
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/twitter/sdk/android/core/identity/c;->m(Landroid/webkit/WebView;Landroid/webkit/WebViewClient;Ljava/lang/String;Landroid/webkit/WebChromeClient;)V

    return-void
.end method
