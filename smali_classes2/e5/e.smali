.class public final Le5/e;
.super Lcom/google/api/client/http/s;
.source "SourceFile"


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field private final c:Le5/a;

.field private final d:Ljavax/net/ssl/SSLSocketFactory;

.field private final e:Ljavax/net/ssl/HostnameVerifier;

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "DELETE"

    const-string v1, "GET"

    const-string v2, "HEAD"

    const-string v3, "OPTIONS"

    const-string v4, "POST"

    const-string v5, "PUT"

    const-string v6, "TRACE"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le5/e;->g:[Ljava/lang/String;

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v0, v0, v1}, Le5/e;-><init>(Le5/a;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Z)V

    return-void
.end method

.method constructor <init>(Le5/a;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/api/client/http/s;-><init>()V

    .line 3
    invoke-direct {p0, p1}, Le5/e;->g(Le5/a;)Le5/a;

    move-result-object p1

    iput-object p1, p0, Le5/e;->c:Le5/a;

    .line 4
    iput-object p2, p0, Le5/e;->d:Ljavax/net/ssl/SSLSocketFactory;

    .line 5
    iput-object p3, p0, Le5/e;->e:Ljavax/net/ssl/HostnameVerifier;

    .line 6
    iput-boolean p4, p0, Le5/e;->f:Z

    return-void
.end method

.method private static f()Ljava/net/Proxy;
    .locals 5

    .line 1
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    const-string v3, "https.proxyHost"

    .line 2
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "https.proxyPort"

    .line 3
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v0
.end method

.method private g(Le5/a;)Le5/a;
    .locals 1

    if-nez p1, :cond_1

    const-string p1, "com.google.api.client.should_use_proxy"

    .line 1
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Le5/b;

    invoke-static {}, Le5/e;->f()Ljava/net/Proxy;

    move-result-object v0

    invoke-direct {p1, v0}, Le5/b;-><init>(Ljava/net/Proxy;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Le5/b;

    invoke-direct {p1}, Le5/b;-><init>()V

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected bridge synthetic b(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/u;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Le5/e;->e(Ljava/lang/String;Ljava/lang/String;)Le5/c;

    move-result-object p1

    return-object p1
.end method

.method protected e(Ljava/lang/String;Ljava/lang/String;)Le5/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le5/e;->h(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "HTTP method %s not supported"

    invoke-static {v0, v2, v1}, Lcom/google/api/client/util/z;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le5/e;->c:Le5/a;

    invoke-interface {p2, v0}, Le5/a;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 5
    instance-of p1, p2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz p1, :cond_1

    .line 6
    move-object p1, p2

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 7
    iget-object v0, p0, Le5/e;->e:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 9
    :cond_0
    iget-object v0, p0, Le5/e;->d:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 11
    :cond_1
    new-instance p1, Le5/c;

    invoke-direct {p1, p2}, Le5/c;-><init>(Ljava/net/HttpURLConnection;)V

    return-object p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Le5/e;->g:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
