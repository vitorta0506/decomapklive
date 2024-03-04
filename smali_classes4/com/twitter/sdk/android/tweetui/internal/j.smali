.class public final Lcom/twitter/sdk/android/tweetui/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/twitter/sdk/android/core/models/l;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/l;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/l;->d:Lcom/twitter/sdk/android/core/models/n;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/twitter/sdk/android/core/models/n;->c:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/l;->e:Lcom/twitter/sdk/android/core/models/n;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/n;->c:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public static b(Lcom/twitter/sdk/android/core/models/l;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/models/l;",
            ")",
            "Ljava/util/List<",
            "Lcom/twitter/sdk/android/core/models/MediaEntity;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/l;->e:Lcom/twitter/sdk/android/core/models/n;

    if-eqz p0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/twitter/sdk/android/core/models/n;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/twitter/sdk/android/core/models/n;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt v1, v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/twitter/sdk/android/core/models/n;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 7
    iget-object v3, v2, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/internal/j;->i(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static c(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/core/models/MediaEntity;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/internal/j;->a(Lcom/twitter/sdk/android/core/models/l;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 4
    iget-object v2, v1, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/internal/j;->i(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Lcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->videoInfo:Lcom/twitter/sdk/android/core/models/VideoInfo;

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/VideoInfo;->variants:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;

    .line 2
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/j;->j(Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static e(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/core/models/MediaEntity;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/internal/j;->a(Lcom/twitter/sdk/android/core/models/l;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 2
    iget-object v1, v0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/internal/j;->k(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Lcom/twitter/sdk/android/core/models/l;)Z
    .locals 0

    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/internal/j;->c(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/core/models/MediaEntity;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Lcom/twitter/sdk/android/core/models/l;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/internal/j;->e(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/core/models/MediaEntity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/twitter/sdk/android/tweetui/internal/j;->d(Lcom/twitter/sdk/android/core/models/MediaEntity;)Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    const-string v1, "animated_gif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    const-string/jumbo v1, "video"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->videoInfo:Lcom/twitter/sdk/android/core/models/VideoInfo;

    iget-wide v0, p0, Lcom/twitter/sdk/android/core/models/VideoInfo;->durationMillis:J

    const-wide/16 v2, 0x1964

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static i(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z
    .locals 1

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    const-string v0, "photo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static j(Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;->contentType:Ljava/lang/String;

    const-string v1, "application/x-mpegURL"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/VideoInfo$Variant;->contentType:Ljava/lang/String;

    const-string/jumbo v0, "video/mp4"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static k(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z
    .locals 2

    iget-object v0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    const-string/jumbo v1, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    const-string v0, "animated_gif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static l(Lcom/twitter/sdk/android/core/models/MediaEntity;)Z
    .locals 1

    iget-object p0, p0, Lcom/twitter/sdk/android/core/models/MediaEntity;->type:Ljava/lang/String;

    const-string v0, "animated_gif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
