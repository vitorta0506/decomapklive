.class public Lcom/google/api/client/http/x;
.super Lcom/google/api/client/http/a;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/http/y;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/api/client/http/a;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/x;->g(Ljava/lang/Object;)Lcom/google/api/client/http/x;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/api/client/http/x;->d:Z

    return-void
.end method

.method private static f(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_4

    .line 1
    invoke-static {p3}, Lcom/google/api/client/util/j;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "&"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4
    instance-of p2, p3, Ljava/lang/Enum;

    if-eqz p2, :cond_2

    check-cast p3, Ljava/lang/Enum;

    .line 5
    invoke-static {p3}, Lcom/google/api/client/util/m;->j(Ljava/lang/Enum;)Lcom/google/api/client/util/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/api/client/util/m;->e()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p4, :cond_3

    .line 6
    invoke-static {p2}, Lj5/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 7
    :cond_3
    invoke-static {p2}, Lj5/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "="

    .line 9
    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    :goto_3
    return p0
.end method


# virtual methods
.method public g(Ljava/lang/Object;)Lcom/google/api/client/http/x;
    .locals 0

    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/http/x;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Lcom/google/api/client/http/a;->e()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2
    iget-object p1, p0, Lcom/google/api/client/http/x;->c:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/api/client/util/j;->f(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lj5/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 6
    instance-of v5, v3, Ljava/lang/Iterable;

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean v4, p0, Lcom/google/api/client/http/x;->d:Z

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/api/client/http/x;->f(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v1

    goto :goto_0

    .line 8
    :cond_2
    :goto_1
    invoke-static {v3}, Lcom/google/api/client/util/g0;->l(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 9
    iget-boolean v5, p0, Lcom/google/api/client/http/x;->d:Z

    invoke-static {v1, v0, v2, v4, v5}, Lcom/google/api/client/http/x;->f(ZLjava/io/Writer;Ljava/lang/String;Ljava/lang/Object;Z)Z

    move-result v1

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method
