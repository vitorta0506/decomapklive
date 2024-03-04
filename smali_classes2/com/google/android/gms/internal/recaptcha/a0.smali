.class public final Lcom/google/android/gms/internal/recaptcha/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Lcom/google/android/gms/internal/recaptcha/dg<",
        "TResponseT;*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/concurrent/ExecutorService;

.field private final c:Lcom/google/android/gms/internal/recaptcha/dg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/recaptcha/dg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ExecutorService;",
            "TResponseT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/recaptcha/a0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/recaptcha/a0;->b:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/recaptcha/a0;->c:Lcom/google/android/gms/internal/recaptcha/dg;

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/internal/recaptcha/a0;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/a0;->a:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/a0;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/net/MalformedURLException;

    const-string v0, "Recaptcha server url only allows using Http or Https."

    invoke-direct {p0, v0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/a0;->a:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Ljava/net/URL;

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/a0;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 7
    check-cast p0, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 8
    :cond_2
    new-instance v0, Ljava/net/URL;

    iget-object p0, p0, Lcom/google/android/gms/internal/recaptcha/a0;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    :goto_1
    return-object p0
.end method

.method private final d(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/dg;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Lcom/google/android/gms/internal/recaptcha/dg;",
            ">(TRequestT;)TResponseT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/recaptcha/RecaptchaNetworkException;,
            Lcom/google/android/gms/recaptcha/HttpStatusException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/recaptcha/gh;->K()I

    move-result v0

    .line 2
    new-array v1, v0, [B

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/recaptcha/hf;->n([B)Lcom/google/android/gms/internal/recaptcha/hf;

    move-result-object v2

    .line 4
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/recaptcha/gh;->a(Lcom/google/android/gms/internal/recaptcha/hf;)V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/recaptcha/hf;->p()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/recaptcha/j3;->a()Lcom/google/android/gms/internal/recaptcha/ja;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v2, Lcom/google/android/gms/internal/recaptcha/z;

    .line 6
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/recaptcha/z;-><init>(Lcom/google/android/gms/internal/recaptcha/a0;)V

    const/16 v3, 0x5400

    const/4 v4, -0x1

    .line 7
    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/gms/internal/recaptcha/ja;->b(Lcom/google/android/gms/internal/recaptcha/i9;II)Ljava/net/HttpURLConnection;

    move-result-object v2

    const v3, 0xea60

    .line 8
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 9
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v3, "Content-type"

    const-string v4, "application/x-protobuffer"

    .line 10
    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Content-Length"

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    .line 12
    invoke-static {}, Le4/m;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 15
    invoke-static {}, Le4/m;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v3, "und"

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v7, "-"

    if-nez v6, :cond_3

    .line 21
    :try_start_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_3
    invoke-virtual {v3}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 24
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    :goto_0
    invoke-virtual {v2, v0, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "POST"

    .line 27
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 28
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 29
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 30
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 31
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 32
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 33
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_5

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/a0;->c:Lcom/google/android/gms/internal/recaptcha/dg;

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/internal/recaptcha/dg;->M()Lcom/google/android/gms/internal/recaptcha/nh;

    move-result-object v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/recaptcha/nh;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :try_start_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/ja;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    check-cast v0, Lcom/google/android/gms/internal/recaptcha/dg;

    return-object v0

    .line 38
    :cond_5
    :try_start_5
    new-instance v1, Lcom/google/android/gms/recaptcha/HttpStatusException;

    const-string v2, "Failed to fetch response"

    .line 39
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/recaptcha/HttpStatusException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    .line 40
    :try_start_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/recaptcha/ja;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_7
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "RecaptchaNetworkMgr"

    .line 41
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/recaptcha/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    instance-of v0, p1, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/google/android/gms/recaptcha/RecaptchaNetworkException;

    .line 43
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/recaptcha/RecaptchaNetworkException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v0

    .line 44
    :cond_6
    new-instance v0, Lcom/google/android/gms/recaptcha/RecaptchaNetworkException;

    const-string v1, "Failed to connect to server"

    .line 45
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/recaptcha/RecaptchaNetworkException;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v0

    :catch_1
    move-exception v0

    .line 46
    new-instance v1, Ljava/lang/RuntimeException;

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x48

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Serializing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-direct {v1, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/nd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Lcom/google/android/gms/internal/recaptcha/dg;",
            ">(TRequestT;)",
            "Lcom/google/android/gms/internal/recaptcha/nd<",
            "TResponseT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/recaptcha/a0;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/google/android/gms/internal/recaptcha/ud;->a(Ljava/util/concurrent/ExecutorService;)Lcom/google/android/gms/internal/recaptcha/od;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/recaptcha/y;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/recaptcha/y;-><init>(Lcom/google/android/gms/internal/recaptcha/a0;Lcom/google/android/gms/internal/recaptcha/dg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/recaptcha/od;->c(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/recaptcha/nd;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic b(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/dg;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/recaptcha/a0;->d(Lcom/google/android/gms/internal/recaptcha/dg;)Lcom/google/android/gms/internal/recaptcha/dg;

    move-result-object p1

    return-object p1
.end method
