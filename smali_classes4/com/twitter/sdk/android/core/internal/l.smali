.class public Lcom/twitter/sdk/android/core/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/twitter/sdk/android/core/models/d;)Lcom/twitter/sdk/android/core/models/h;
    .locals 1

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/d;->a:Lcom/twitter/sdk/android/core/models/c;

    const-string v0, "player_image"

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/models/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/sdk/android/core/models/h;

    return-object p0
.end method

.method public static b(Lcom/twitter/sdk/android/core/models/d;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/d;->a:Lcom/twitter/sdk/android/core/models/c;

    const-string v0, "player_stream_url"

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/models/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static c(Lcom/twitter/sdk/android/core/models/d;)Z
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/d;->b:Ljava/lang/String;

    const-string v1, "player"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/d;->b:Ljava/lang/String;

    const-string/jumbo v1, "vine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/twitter/sdk/android/core/internal/l;->d(Lcom/twitter/sdk/android/core/models/d;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(Lcom/twitter/sdk/android/core/models/d;)Z
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/d;->a:Lcom/twitter/sdk/android/core/models/c;

    const-string/jumbo v0, "site"

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/core/models/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/twitter/sdk/android/core/models/p;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/p;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v3, 0x22f7e725

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method
