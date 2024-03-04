.class public Ln7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/callback/c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ln7/c;->b(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Z)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Lcom/guochao/faceshow/aaspring/base/http/callback/c;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/c<",
            "TT;>;Z)Z"
        }
    .end annotation

    .line 1
    invoke-static {}, Ln7/c;->c()Z

    move-result p0

    if-nez p0, :cond_1

    .line 2
    new-instance p0, Lg7/a;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    const/4 v0, -0x1

    invoke-direct {p0, p2, v0}, Lg7/a;-><init>(Ljava/lang/Throwable;I)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onError(Lg7/a;)V

    .line 4
    invoke-virtual {p1}, Lcom/guochao/faceshow/aaspring/base/http/callback/c;->onCompleted()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static c()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v3}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    array-length v3, v0

    if-lez v3, :cond_4

    const/4 v3, 0x0

    .line 6
    :goto_1
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 7
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_3

    return v2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return v1

    :catch_0
    return v2
.end method
