.class final Lcom/twitter/sdk/android/tweetui/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/twitter/sdk/android/tweetui/i;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/tweetui/i;

    .line 2
    iget v1, v0, Lcom/twitter/sdk/android/tweetui/i;->a:I

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v2

    if-gt v4, v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iget v1, v0, Lcom/twitter/sdk/android/tweetui/i;->a:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/twitter/sdk/android/tweetui/i;->a:I

    .line 6
    iget v1, v0, Lcom/twitter/sdk/android/tweetui/i;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/twitter/sdk/android/tweetui/i;->b:I

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method static b(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/twitter/sdk/android/tweetui/i;",
            ">;",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/sdk/android/tweetui/i;

    move v5, v3

    const/4 v6, 0x0

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_3

    .line 4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    .line 5
    aget v8, v7, v1

    const/4 v9, 0x1

    .line 6
    aget v7, v7, v9

    sub-int v8, v7, v8

    .line 7
    iget v9, v4, Lcom/twitter/sdk/android/tweetui/i;->a:I

    if-ge v7, v9, :cond_1

    add-int/2addr v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8
    :cond_1
    iget v9, v4, Lcom/twitter/sdk/android/tweetui/i;->b:I

    if-ge v7, v9, :cond_2

    add-int/2addr v6, v8

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget v2, v4, Lcom/twitter/sdk/android/tweetui/i;->a:I

    add-int/2addr v6, v5

    sub-int/2addr v2, v6

    iput v2, v4, Lcom/twitter/sdk/android/tweetui/i;->a:I

    .line 10
    iget v2, v4, Lcom/twitter/sdk/android/tweetui/i;->b:I

    sub-int/2addr v2, v6

    iput v2, v4, Lcom/twitter/sdk/android/tweetui/i;->b:I

    move v2, v3

    move v3, v5

    goto :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method static c(Ljava/lang/StringBuilder;Lcom/twitter/sdk/android/tweetui/h;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p0, p1, Lcom/twitter/sdk/android/tweetui/h;->b:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/c0;->a(Ljava/util/List;Ljava/util/List;)V

    .line 7
    iget-object p0, p1, Lcom/twitter/sdk/android/tweetui/h;->c:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/c0;->a(Ljava/util/List;Ljava/util/List;)V

    .line 8
    iget-object p0, p1, Lcom/twitter/sdk/android/tweetui/h;->d:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/c0;->a(Ljava/util/List;Ljava/util/List;)V

    .line 9
    iget-object p0, p1, Lcom/twitter/sdk/android/tweetui/h;->e:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/c0;->a(Ljava/util/List;Ljava/util/List;)V

    .line 10
    iget-object p0, p1, Lcom/twitter/sdk/android/tweetui/h;->f:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/twitter/sdk/android/tweetui/c0;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static d(Lcom/twitter/sdk/android/tweetui/h;Lcom/twitter/sdk/android/core/models/l;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->d:Lcom/twitter/sdk/android/core/models/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/n;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/UrlEntity;

    .line 4
    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/i;->d(Lcom/twitter/sdk/android/core/models/UrlEntity;)Lcom/twitter/sdk/android/tweetui/i;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/h;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->d:Lcom/twitter/sdk/android/core/models/n;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/n;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/MediaEntity;

    .line 8
    new-instance v2, Lcom/twitter/sdk/android/tweetui/g;

    invoke-direct {v2, v1}, Lcom/twitter/sdk/android/tweetui/g;-><init>(Lcom/twitter/sdk/android/core/models/MediaEntity;)V

    .line 9
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/h;->c:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_2
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->d:Lcom/twitter/sdk/android/core/models/n;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/n;->d:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/HashtagEntity;

    .line 12
    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/i;->a(Lcom/twitter/sdk/android/core/models/HashtagEntity;)Lcom/twitter/sdk/android/tweetui/i;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/h;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_3
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->d:Lcom/twitter/sdk/android/core/models/n;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/models/n;->b:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/models/MentionEntity;

    .line 16
    invoke-static {v1}, Lcom/twitter/sdk/android/tweetui/i;->b(Lcom/twitter/sdk/android/core/models/MentionEntity;)Lcom/twitter/sdk/android/tweetui/i;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/h;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_4
    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->d:Lcom/twitter/sdk/android/core/models/n;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/n;->e:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/models/SymbolEntity;

    .line 20
    invoke-static {v0}, Lcom/twitter/sdk/android/tweetui/i;->c(Lcom/twitter/sdk/android/core/models/SymbolEntity;)Lcom/twitter/sdk/android/tweetui/i;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/h;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    return-void
.end method

.method static e(Lcom/twitter/sdk/android/tweetui/h;Lcom/twitter/sdk/android/core/models/l;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/twitter/sdk/android/core/models/l;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lxe/a;->b:Lxe/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/models/l;->A:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lxe/a;->e(Ljava/lang/String;)Lxe/a$d;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lxe/a$d;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/h;->b:Ljava/util/List;

    iget-object v2, p1, Lxe/a$d;->b:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/c0;->b(Ljava/util/List;Ljava/util/List;)V

    .line 5
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/h;->c:Ljava/util/List;

    iget-object v2, p1, Lxe/a$d;->b:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/c0;->b(Ljava/util/List;Ljava/util/List;)V

    .line 6
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/h;->d:Ljava/util/List;

    iget-object v2, p1, Lxe/a$d;->b:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/c0;->b(Ljava/util/List;Ljava/util/List;)V

    .line 7
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/h;->e:Ljava/util/List;

    iget-object v2, p1, Lxe/a$d;->b:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/twitter/sdk/android/tweetui/c0;->b(Ljava/util/List;Ljava/util/List;)V

    .line 8
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/h;->f:Ljava/util/List;

    iget-object p1, p1, Lxe/a$d;->b:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lcom/twitter/sdk/android/tweetui/c0;->b(Ljava/util/List;Ljava/util/List;)V

    .line 9
    invoke-static {v0, p0}, Lcom/twitter/sdk/android/tweetui/c0;->c(Ljava/lang/StringBuilder;Lcom/twitter/sdk/android/tweetui/h;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/h;->a:Ljava/lang/String;

    return-void
.end method

.method static f(Lcom/twitter/sdk/android/core/models/l;)Lcom/twitter/sdk/android/tweetui/h;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Lcom/twitter/sdk/android/tweetui/h;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/h;-><init>()V

    .line 2
    invoke-static {v0, p0}, Lcom/twitter/sdk/android/tweetui/c0;->d(Lcom/twitter/sdk/android/tweetui/h;Lcom/twitter/sdk/android/core/models/l;)V

    .line 3
    invoke-static {v0, p0}, Lcom/twitter/sdk/android/tweetui/c0;->e(Lcom/twitter/sdk/android/tweetui/h;Lcom/twitter/sdk/android/core/models/l;)V

    return-object v0
.end method
