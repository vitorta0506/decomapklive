.class public final Lio/grpc/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/v0$c;,
        Lio/grpc/v0$b;
    }
.end annotation


# static fields
.field private static final e:Ljava/util/logging/Logger;

.field private static f:Lio/grpc/v0;


# instance fields
.field private final a:Lio/grpc/t0$d;

.field private b:Ljava/lang/String;

.field private final c:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lio/grpc/u0;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lio/grpc/u0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lio/grpc/v0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/v0;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/v0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/v0$b;-><init>(Lio/grpc/v0;Lio/grpc/v0$a;)V

    iput-object v0, p0, Lio/grpc/v0;->a:Lio/grpc/t0$d;

    const-string v0, "unknown"

    .line 3
    iput-object v0, p0, Lio/grpc/v0;->b:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/grpc/v0;->c:Ljava/util/LinkedHashSet;

    .line 5
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/v0;->d:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic a(Lio/grpc/v0;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/grpc/v0;->b:Ljava/lang/String;

    return-object p0
.end method

.method private declared-synchronized b(Lio/grpc/u0;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/grpc/u0;->d()Z

    move-result v0

    const-string v1, "isAvailable() returned false"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lio/grpc/v0;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized d()Lio/grpc/v0;
    .locals 6

    const-class v0, Lio/grpc/u0;

    const-class v1, Lio/grpc/v0;

    monitor-enter v1

    .line 1
    :try_start_0
    sget-object v2, Lio/grpc/v0;->f:Lio/grpc/v0;

    if-nez v2, :cond_3

    .line 2
    invoke-static {}, Lio/grpc/v0;->e()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-instance v4, Lio/grpc/v0$c;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lio/grpc/v0$c;-><init>(Lio/grpc/v0$a;)V

    .line 4
    invoke-static {v0, v2, v3, v4}, Lio/grpc/b1;->e(Ljava/lang/Class;Ljava/lang/Iterable;Ljava/lang/ClassLoader;Lio/grpc/b1$b;)Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    sget-object v2, Lio/grpc/v0;->e:Ljava/util/logging/Logger;

    const-string v3, "No NameResolverProviders found via ServiceLoader, including for DNS. This is probably due to a broken build. If using ProGuard, check your configuration"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 7
    :cond_0
    new-instance v2, Lio/grpc/v0;

    invoke-direct {v2}, Lio/grpc/v0;-><init>()V

    sput-object v2, Lio/grpc/v0;->f:Lio/grpc/v0;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/u0;

    .line 9
    sget-object v3, Lio/grpc/v0;->e:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service loader found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lio/grpc/u0;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    sget-object v3, Lio/grpc/v0;->f:Lio/grpc/v0;

    invoke-direct {v3, v2}, Lio/grpc/v0;->b(Lio/grpc/u0;)V

    goto :goto_0

    .line 12
    :cond_2
    sget-object v0, Lio/grpc/v0;->f:Lio/grpc/v0;

    invoke-direct {v0}, Lio/grpc/v0;->g()V

    .line 13
    :cond_3
    sget-object v0, Lio/grpc/v0;->f:Lio/grpc/v0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static e()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    const-class v1, Lio/grpc/internal/d0;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    sget-object v2, Lio/grpc/v0;->e:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find DNS NameResolver"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized g()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/high16 v1, -0x80000000

    const-string v2, "unknown"

    .line 2
    iget-object v3, p0, Lio/grpc/v0;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/u0;

    .line 3
    invoke-virtual {v4}, Lio/grpc/u0;->c()Ljava/lang/String;

    move-result-object v5

    .line 4
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/grpc/u0;

    if-eqz v6, :cond_1

    .line 5
    invoke-virtual {v6}, Lio/grpc/u0;->e()I

    move-result v6

    invoke-virtual {v4}, Lio/grpc/u0;->e()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 6
    :cond_1
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_2
    invoke-virtual {v4}, Lio/grpc/u0;->e()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 8
    invoke-virtual {v4}, Lio/grpc/u0;->e()I

    move-result v1

    .line 9
    invoke-virtual {v4}, Lio/grpc/u0;->c()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/v0;->d:Lcom/google/common/collect/ImmutableMap;

    .line 11
    iput-object v2, p0, Lio/grpc/v0;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public c()Lio/grpc/t0$d;
    .locals 1

    iget-object v0, p0, Lio/grpc/v0;->a:Lio/grpc/t0$d;

    return-object v0
.end method

.method declared-synchronized f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/grpc/u0;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/v0;->d:Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
