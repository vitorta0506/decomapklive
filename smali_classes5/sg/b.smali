.class public abstract Lsg/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/net/SocketAddress;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field private static final c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lug/j;",
            "Lsg/a<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lug/j;",
            "Lug/r<",
            "Lug/q<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsg/b;

    invoke-static {v0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/c;->b(Ljava/lang/Class;)Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v0

    sput-object v0, Lsg/b;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lsg/b;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lsg/b;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 7

    .line 1
    iget-object v0, p0, Lsg/b;->a:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lsg/b;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Lsg/a;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lsg/a;

    check-cast v1, [Lsg/a;

    .line 3
    iget-object v3, p0, Lsg/b;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v3, p0, Lsg/b;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    new-array v4, v2, [Ljava/util/Map$Entry;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Map$Entry;

    .line 5
    iget-object v4, p0, Lsg/b;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    array-length v0, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_0

    aget-object v5, v3, v4

    .line 8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lug/j;

    invoke-interface {v6}, Lug/l;->T()Lug/q;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lug/r;

    invoke-interface {v6, v5}, Lug/q;->f(Lug/r;)Lug/q;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    array-length v0, v1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 10
    :try_start_1
    invoke-interface {v3}, Lsg/a;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 11
    sget-object v4, Lsg/b;->c:Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    const-string v5, "Failed to close a resolver:"

    invoke-interface {v4, v5, v3}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catchall_1
    move-exception v1

    .line 12
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
