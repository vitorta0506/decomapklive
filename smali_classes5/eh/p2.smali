.class abstract Leh/p2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/p2$k;,
        Leh/p2$n;,
        Leh/p2$j;,
        Leh/p2$d;,
        Leh/p2$b;,
        Leh/p2$h;,
        Leh/p2$f;,
        Leh/p2$m;,
        Leh/p2$l;,
        Leh/p2$e;,
        Leh/p2$c;,
        Leh/p2$i;,
        Leh/p2$g;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "resourceName"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xdstp:"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x26

    .line 5
    invoke-static {v1}, Lcom/google/common/base/t;->f(C)Lcom/google/common/base/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/t;->e()Lcom/google/common/base/t;

    move-result-object v2

    if-nez v0, :cond_1

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {v2, v0}, Lcom/google/common/base/t;->j(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    return-object p0

    .line 8
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 10
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 12
    invoke-static {v1}, Lcom/google/common/base/i;->g(C)Lcom/google/common/base/i;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/common/base/i;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static q(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "resourceName"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "xdstp:"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x2f

    .line 5
    invoke-static {v2}, Lcom/google/common/base/t;->f(C)Lcom/google/common/base/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/t;->e()Lcom/google/common/base/t;

    move-result-object v2

    if-nez p0, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-virtual {v2, p0}, Lcom/google/common/base/t;->j(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    return v0

    .line 8
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 9
    invoke-virtual {v2, p1}, Lcom/google/common/base/t;->j(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    return v1

    :catch_0
    return v0
.end method

.method static r(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2f

    .line 1
    invoke-static {v0}, Lcom/google/common/base/t;->f(C)Lcom/google/common/base/t;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/common/base/t;->i(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {}, Lx5/b;->a()Lv5/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lv5/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/google/common/base/i;->g(C)Lcom/google/common/base/i;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/google/common/base/i;->d(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method h(Leh/j0$d;Ljava/lang/String;Ljava/lang/String;)Leh/s1$b;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method i(Leh/j0$d;Ljava/lang/String;Ljava/lang/String;Leh/t1;)Leh/s1$d;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method j(Ljava/lang/String;Leh/p2$b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method k(Ljava/lang/String;Leh/p2$d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method l(Ljava/lang/String;Leh/p2$f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method m(Ljava/lang/String;Leh/p2$h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method o()Leh/j0$b;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method p()Leh/k2;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method s()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method t(Ljava/lang/String;Leh/p2$b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method u(Ljava/lang/String;Leh/p2$d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method v(Ljava/lang/String;Leh/p2$f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method w(Ljava/lang/String;Leh/p2$h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
