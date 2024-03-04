.class public Lve/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/e;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lve/e;->c()Lokhttp3/CertificatePinner;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    new-instance v0, Lve/c;

    invoke-direct {v0, p1}, Lve/c;-><init>(Lcom/twitter/sdk/android/core/e;)V

    .line 2
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    new-instance v0, Lve/a;

    invoke-direct {v0, p1}, Lve/a;-><init>(Lcom/twitter/sdk/android/core/e;)V

    .line 3
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    new-instance p1, Lve/b;

    invoke-direct {p1}, Lve/b;-><init>()V

    .line 4
    invoke-virtual {p0, p1}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method static b(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient$Builder;",
            "Lcom/twitter/sdk/android/core/j<",
            "+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ")",
            "Lokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lve/e;->c()Lokhttp3/CertificatePinner;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    new-instance v0, Lve/d;

    invoke-direct {v0, p1, p2}, Lve/d;-><init>(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)V

    .line 2
    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static c()Lokhttp3/CertificatePinner;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/CertificatePinner$Builder;

    invoke-direct {v0}, Lokhttp3/CertificatePinner$Builder;-><init>()V

    const-string v1, "sha1/I0PRSKJViZuUfUYaeX7ATP7RcLc="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "*.twitter.com"

    .line 2
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/VRmyeKyygdftp6vBg5nDu2kEJLU="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/Eje6RRfurSkm/cHN/r7t8t7ZFFw="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/Wr7Fddyu87COJxlD/H8lDD32YeM="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/GiG0lStik84Ys2XsnA6TTLOB5tQ="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/IvGeLsbqzPxdI0b0wuj2xVTdXgc="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/7WYxNdMb1OymFMQp4xkGn5TBJlA="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/sYEIGhmkwJQf+uiVKMEkyZs0rMc="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/PANDaGiVHPNpKri0Jtq6j+ki5b0="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/u8I+KQuzKHcdrT6iTb30I70GsD0="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/wHqYaI2J+6sFZAwRfap9ZbjKzE4="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/cTg28gIxU0crbrplRqkQFVggBQk="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/sBmJ5+/7Sq/LFI9YRjl2IkFQ4bo="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/vb6nG6txV/nkddlU0rcngBqCJoI="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/nKmNAK90Dd2BgNITRaWLjy6UONY="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/h+hbY1PGI6MSjLD/u/VR/lmADiI="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/Xk9ThoXdT57KX9wNRW99UbHcm3s="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/1S4TwavjSdrotJWU73w4Q2BkZr0="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/gzF+YoVCU9bXeDGQ7JGQVumRueM="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/aDMOYTWFIVkpg6PI0tLhQG56s8E="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    const-string v1, "sha1/Vv7zwhR9TtOIN/29MFI4cgHld40="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0, v2, v1}, Lokhttp3/CertificatePinner$Builder;->add(Ljava/lang/String;[Ljava/lang/String;)Lokhttp3/CertificatePinner$Builder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lokhttp3/CertificatePinner$Builder;->build()Lokhttp3/CertificatePinner;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/twitter/sdk/android/core/e;)Lokhttp3/OkHttpClient;
    .locals 1

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {v0, p0}, Lve/e;->a(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/e;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lokhttp3/OkHttpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/j<",
            "+",
            "Lcom/twitter/sdk/android/core/TwitterAuthToken;",
            ">;",
            "Lcom/twitter/sdk/android/core/TwitterAuthConfig;",
            ")",
            "Lokhttp3/OkHttpClient;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-static {v0, p0, p1}, Lve/e;->b(Lokhttp3/OkHttpClient$Builder;Lcom/twitter/sdk/android/core/j;Lcom/twitter/sdk/android/core/TwitterAuthConfig;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Session must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
