.class public final Lcom/twitter/sdk/android/tweetui/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/core/models/l;
    .locals 1

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/l;->y:Lcom/twitter/sdk/android/core/models/l;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "https://twitter.com/hashtag/%s?ref_src=twsrc%%5Etwitterkit"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/String;J)Landroid/net/Uri;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "https://twitter.com/%s/status/%d?ref_src=twsrc%%5Etwitterkit"

    if-eqz v0, :cond_1

    .line 2
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "twitter_unknown"

    aput-object v3, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v0, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 4
    :goto_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "https://twitter.com/%s?ref_src=twsrc%%5Etwitterkit"

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "twitter_unknown"

    aput-object v2, v0, v1

    invoke-static {p0, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "https://twitter.com/search?q=%%24%s&ref_src=twsrc%%5Etwitterkit"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static f(Lcom/twitter/sdk/android/core/models/l;)Z
    .locals 5

    if-eqz p0, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/models/l;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/l;->D:Lcom/twitter/sdk/android/core/models/User;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static g(Lcom/twitter/sdk/android/core/models/l;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/l;->v:Lcom/twitter/sdk/android/core/models/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/l;->H:Lcom/twitter/sdk/android/core/models/d;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/l;->d:Lcom/twitter/sdk/android/core/models/n;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/n;->c:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
