.class public Lve/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Authenticator;


# instance fields
.field final a:Lcom/twitter/sdk/android/core/e;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lve/c;->a:Lcom/twitter/sdk/android/core/e;

    return-void
.end method


# virtual methods
.method a(Lokhttp3/Response;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ge v1, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lve/c;->c(Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method b(Lokhttp3/Response;)Lcom/twitter/sdk/android/core/d;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p1

    const-string v0, "Authorization"

    .line 2
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-guest-token"

    .line 3
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4
    new-instance v1, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    const-string v2, "bearer "

    const-string v3, ""

    .line 5
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bearer"

    invoke-direct {v1, v2, v0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance p1, Lcom/twitter/sdk/android/core/d;

    invoke-direct {p1, v1}, Lcom/twitter/sdk/android/core/d;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method c(Lokhttp3/Response;)Lokhttp3/Request;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lve/c;->a(Lokhttp3/Response;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lve/c;->a:Lcom/twitter/sdk/android/core/e;

    .line 3
    invoke-virtual {p0, p1}, Lve/c;->b(Lokhttp3/Response;)Lcom/twitter/sdk/android/core/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/twitter/sdk/android/core/e;->d(Lcom/twitter/sdk/android/core/d;)Lcom/twitter/sdk/android/core/d;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/j;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lve/c;->d(Lokhttp3/Request;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method d(Lokhttp3/Request;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)Lokhttp3/Request;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    .line 2
    invoke-static {p1, p2}, Lve/a;->a(Lokhttp3/Request$Builder;Lcom/twitter/sdk/android/core/internal/oauth/GuestAuthToken;)V

    .line 3
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method
