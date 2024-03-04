.class public abstract Lcom/google/api/gax/rpc/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/gax/rpc/j$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/api/gax/rpc/g0;)Lcom/google/api/gax/rpc/j;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->b()Lk5/a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->a()Ll5/h;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ll5/h;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->c()Ll5/f;

    move-result-object v3

    invoke-interface {v3}, Ll5/f;->a()Lcom/google/auth/Credentials;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->i()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    new-instance v4, Lcom/google/api/gax/rpc/internal/QuotaProjectIdHidingCredentials;

    invoke-direct {v4, v3}, Lcom/google/api/gax/rpc/internal/QuotaProjectIdHidingCredentials;-><init>(Lcom/google/auth/Credentials;)V

    move-object v3, v4

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->n()Lcom/google/api/gax/rpc/i0;

    move-result-object v4

    .line 8
    invoke-interface {v4}, Lcom/google/api/gax/rpc/i0;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->e()Ll5/h;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 9
    invoke-interface {v4, v2}, Lcom/google/api/gax/rpc/i0;->c(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/i0;

    move-result-object v4

    .line 10
    :cond_1
    invoke-static {p0}, Lcom/google/api/gax/rpc/j;->j(Lcom/google/api/gax/rpc/g0;)Ljava/util/Map;

    move-result-object v5

    .line 11
    invoke-interface {v4}, Lcom/google/api/gax/rpc/i0;->f()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 12
    invoke-interface {v4, v5}, Lcom/google/api/gax/rpc/i0;->i(Ljava/util/Map;)Lcom/google/api/gax/rpc/i0;

    move-result-object v4

    .line 13
    :cond_2
    invoke-interface {v4}, Lcom/google/api/gax/rpc/i0;->j()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 14
    invoke-interface {v4, v3}, Lcom/google/api/gax/rpc/i0;->b(Lcom/google/auth/Credentials;)Lcom/google/api/gax/rpc/i0;

    move-result-object v4

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->d()Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->h()Ljava/lang/String;

    move-result-object v6

    .line 17
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->l()Z

    move-result v7

    new-instance v8, Lcom/google/api/gax/rpc/mtls/MtlsProvider;

    invoke-direct {v8}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;-><init>()V

    .line 18
    invoke-static {v5, v6, v7, v8}, Lcom/google/api/gax/rpc/j;->g(Ljava/lang/String;Ljava/lang/String;ZLcom/google/api/gax/rpc/mtls/MtlsProvider;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-interface {v4}, Lcom/google/api/gax/rpc/i0;->h()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 20
    invoke-interface {v4, v5}, Lcom/google/api/gax/rpc/i0;->g(Ljava/lang/String;)Lcom/google/api/gax/rpc/i0;

    move-result-object v4

    .line 21
    :cond_4
    invoke-interface {v4}, Lcom/google/api/gax/rpc/i0;->e()Lcom/google/api/gax/rpc/h0;

    move-result-object v5

    .line 22
    invoke-interface {v5}, Lcom/google/api/gax/rpc/h0;->b1()Lcom/google/api/gax/rpc/a;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/google/api/gax/rpc/a;->c(Lcom/google/api/gax/rpc/h0;)Lcom/google/api/gax/rpc/a;

    move-result-object v6

    if-eqz v3, :cond_5

    .line 23
    invoke-interface {v6, v3}, Lcom/google/api/gax/rpc/a;->b(Lcom/google/auth/Credentials;)Lcom/google/api/gax/rpc/a;

    move-result-object v6

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->k()Lcom/google/api/gax/rpc/m0;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_9

    .line 25
    invoke-interface {v7}, Lcom/google/api/gax/rpc/m0;->g()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 26
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->j()Lorg/threeten/bp/Duration;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/api/gax/rpc/m0;->e(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/rpc/m0;

    move-result-object v7

    .line 27
    :cond_6
    invoke-interface {v7}, Lcom/google/api/gax/rpc/m0;->h()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 28
    invoke-interface {v7, v0}, Lcom/google/api/gax/rpc/m0;->b(Lk5/a;)Lcom/google/api/gax/rpc/m0;

    move-result-object v7

    .line 29
    :cond_7
    invoke-interface {v7}, Lcom/google/api/gax/rpc/m0;->d()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 30
    invoke-interface {v7, v2}, Lcom/google/api/gax/rpc/m0;->c(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/m0;

    move-result-object v7

    .line 31
    :cond_8
    invoke-interface {v7}, Lcom/google/api/gax/rpc/m0;->f()Lcom/google/api/gax/rpc/l0;

    move-result-object v8

    .line 32
    :cond_9
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$b;

    move-result-object v9

    .line 33
    invoke-interface {v4}, Lcom/google/api/gax/rpc/i0;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 34
    invoke-virtual {v9, v5}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    .line 35
    :cond_a
    invoke-interface {v1}, Ll5/h;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 36
    new-instance v1, Ll5/g;

    invoke-direct {v1, v2}, Ll5/g;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v9, v1}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    :cond_b
    if-eqz v7, :cond_c

    .line 37
    invoke-interface {v7}, Lcom/google/api/gax/rpc/m0;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 38
    invoke-virtual {v9, v8}, Lcom/google/common/collect/ImmutableList$b;->f(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$b;

    .line 39
    :cond_c
    invoke-static {}, Lcom/google/api/gax/rpc/j;->q()Lcom/google/api/gax/rpc/j$b;

    move-result-object v1

    .line 40
    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList$b;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/api/gax/rpc/j$b;->b(Ljava/util/List;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v1

    .line 41
    invoke-virtual {v1, v2}, Lcom/google/api/gax/rpc/j$b;->g(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v1

    .line 42
    invoke-virtual {v1, v3}, Lcom/google/api/gax/rpc/j$b;->d(Lcom/google/auth/Credentials;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v5}, Lcom/google/api/gax/rpc/j$b;->n(Lcom/google/api/gax/rpc/h0;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->f()Lcom/google/api/gax/rpc/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/api/gax/rpc/p;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/rpc/j$b;->h(Ljava/util/Map;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->g()Lcom/google/api/gax/rpc/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/api/gax/rpc/p;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/api/gax/rpc/j$b;->i(Ljava/util/Map;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v1

    .line 46
    invoke-virtual {v1, v0}, Lcom/google/api/gax/rpc/j$b;->c(Lk5/a;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v6}, Lcom/google/api/gax/rpc/j$b;->e(Lcom/google/api/gax/rpc/a;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/j$b;->f(Ljava/lang/String;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/j$b;->j(Ljava/lang/String;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v8}, Lcom/google/api/gax/rpc/j$b;->k(Lcom/google/api/gax/rpc/l0;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->j()Lorg/threeten/bp/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/j$b;->l(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->m()Lcom/google/api/gax/tracing/ApiTracerFactory;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/api/gax/rpc/j$b;->m(Lcom/google/api/gax/tracing/ApiTracerFactory;)Lcom/google/api/gax/rpc/j$b;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/j$b;->a()Lcom/google/api/gax/rpc/j;

    move-result-object p0

    return-object p0
.end method

.method static g(Ljava/lang/String;Ljava/lang/String;ZLcom/google/api/gax/rpc/mtls/MtlsProvider;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 1
    sget-object p2, Lcom/google/api/gax/rpc/j$a;->a:[I

    invoke-virtual {p3}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->d()Lcom/google/api/gax/rpc/mtls/MtlsProvider$MtlsEndpointUsagePolicy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 2
    invoke-virtual {p3}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->f()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/google/api/gax/rpc/mtls/MtlsProvider;->b()Ljava/security/KeyStore;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    return-object p0

    :cond_1
    return-object p1

    :cond_2
    return-object p0
.end method

.method private static j(Lcom/google/api/gax/rpc/g0;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/gax/rpc/g0;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->f()Lcom/google/api/gax/rpc/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/api/gax/rpc/p;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->g()Lcom/google/api/gax/rpc/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/api/gax/rpc/p;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/w7;->f(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/w7$g;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "x-goog-user-project"

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "user-agent"

    .line 6
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->i()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Header provider can\'t override the header: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/google/api/gax/rpc/g0;->i()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 13
    invoke-interface {p0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 14
    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 15
    invoke-interface {p0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 16
    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method public static q()Lcom/google/api/gax/rpc/j$b;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/api/gax/rpc/f$b;

    invoke-direct {v0}, Lcom/google/api/gax/rpc/f$b;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/f$b;->b(Ljava/util/List;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/j$b;->g(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/j$b;->h(Ljava/util/Map;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/j$b;->i(Ljava/util/Map;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/google/api/core/NanoClock;->getDefaultClock()Lk5/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/j$b;->c(Lk5/a;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/j$b;->k(Lcom/google/api/gax/rpc/l0;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    sget-object v2, Lorg/threeten/bp/Duration;->ZERO:Lorg/threeten/bp/Duration;

    .line 8
    invoke-virtual {v0, v2}, Lcom/google/api/gax/rpc/j$b;->l(Lorg/threeten/bp/Duration;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    .line 9
    invoke-static {}, Lcom/google/api/gax/tracing/a;->b()Lcom/google/api/gax/tracing/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/api/gax/rpc/j$b;->m(Lcom/google/api/gax/tracing/ApiTracerFactory;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/api/gax/rpc/j$b;->j(Ljava/lang/String;)Lcom/google/api/gax/rpc/j$b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ll5/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c()Lk5/a;
.end method

.method public abstract d()Lcom/google/auth/Credentials;
.end method

.method public abstract e()Lcom/google/api/gax/rpc/a;
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public abstract h()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract i()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract k()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract l()Ljava/lang/String;
.end method

.method public abstract m()Lcom/google/api/gax/rpc/l0;
.end method

.method public abstract n()Lorg/threeten/bp/Duration;
.end method

.method public abstract o()Lcom/google/api/gax/tracing/ApiTracerFactory;
.end method

.method public abstract p()Lcom/google/api/gax/rpc/h0;
.end method
