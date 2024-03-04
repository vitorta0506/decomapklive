.class public abstract Ljg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljg/a<",
        "TB;TC;>;C::",
        "Lio/grpc/netty/shaded/io/netty/channel/e;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final g:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile a:Lio/grpc/netty/shaded/io/netty/channel/m0;

.field private volatile b:Ljg/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljg/e<",
            "+TC;>;"
        }
    .end annotation
.end field

.field private volatile c:Ljava/net/SocketAddress;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile f:Lio/grpc/netty/shaded/io/netty/channel/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/Map$Entry;

    .line 1
    sput-object v1, Ljg/a;->g:[Ljava/util/Map$Entry;

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 2
    sput-object v0, Ljg/a;->h:[Ljava/util/Map$Entry;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljg/a;->d:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljg/a;->e:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljg/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/a<",
            "TB;TC;>;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Ljg/a;->d:Ljava/util/Map;

    .line 6
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Ljg/a;->e:Ljava/util/Map;

    .line 7
    iget-object v2, p1, Ljg/a;->a:Lio/grpc/netty/shaded/io/netty/channel/m0;

    iput-object v2, p0, Ljg/a;->a:Lio/grpc/netty/shaded/io/netty/channel/m0;

    .line 8
    iget-object v2, p1, Ljg/a;->b:Ljg/e;

    iput-object v2, p0, Ljg/a;->b:Ljg/e;

    .line 9
    iget-object v2, p1, Ljg/a;->f:Lio/grpc/netty/shaded/io/netty/channel/k;

    iput-object v2, p0, Ljg/a;->f:Lio/grpc/netty/shaded/io/netty/channel/k;

    .line 10
    iget-object v2, p1, Ljg/a;->c:Ljava/net/SocketAddress;

    iput-object v2, p0, Ljg/a;->c:Ljava/net/SocketAddress;

    .line 11
    iget-object v2, p1, Ljg/a;->d:Ljava/util/Map;

    monitor-enter v2

    .line 12
    :try_start_0
    iget-object v3, p1, Ljg/a;->d:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 13
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object p1, p1, Ljg/a;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static A(Lio/grpc/netty/shaded/io/netty/channel/e;[Ljava/util/Map$Entry;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;",
            "Ljava/lang/Object;",
            ">;",
            "Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;",
            ")V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/netty/shaded/io/netty/channel/r;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v3, v2, p2}, Ljg/a;->z(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static i(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static r(Ljava/util/Map;)[Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    sget-object v0, Ljg/a;->h:[Ljava/util/Map$Entry;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    return-object p0
.end method

.method static t(Ljava/util/Map;)[Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ljg/a;->g:[Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private x()Ljg/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    return-object p0
.end method

.method static y(Lio/grpc/netty/shaded/io/netty/channel/e;[Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            "[",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/netty/shaded/io/netty/util/e;

    .line 3
    invoke-interface {p0, v3}, Lio/grpc/netty/shaded/io/netty/util/f;->T(Lio/grpc/netty/shaded/io/netty/util/e;)Lio/grpc/netty/shaded/io/netty/util/d;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lio/grpc/netty/shaded/io/netty/util/d;->set(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static z(Lio/grpc/netty/shaded/io/netty/channel/e;Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/e;",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;",
            "Ljava/lang/Object;",
            "Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lio/grpc/netty/shaded/io/netty/channel/e;->b0()Lio/grpc/netty/shaded/io/netty/channel/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/grpc/netty/shaded/io/netty/channel/f;->k(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unknown channel option \'{}\' for channel \'{}\'"

    .line 2
    invoke-interface {p3, v0, p1, p0}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const/4 p0, 0x3

    aput-object v0, v1, p0

    const-string p0, "Failed to set channel option \'{}\' with value \'{}\' for channel \'{}\'"

    .line 3
    invoke-interface {p3, p0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public B()Ljg/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljg/a;->a:Lio/grpc/netty/shaded/io/netty/channel/m0;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Ljg/a;->b:Ljg/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Ljg/a;->x()Ljg/a;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "channel or channelFactory not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "group not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljg/a;->e:Ljava/util/Map;

    invoke-static {v0}, Ljg/a;->i(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljg/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Ljg/a;->g()Ljg/a;

    move-result-object v0

    return-object v0
.end method

.method public d(Lio/grpc/netty/shaded/io/netty/channel/h;)Ljg/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/h<",
            "+TC;>;)TB;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljg/a;->e(Ljg/e;)Ljg/a;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljg/e;)Ljg/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg/e<",
            "+TC;>;)TB;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "channelFactory"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ljg/a;->b:Ljg/e;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Ljg/a;->b:Ljg/e;

    .line 4
    invoke-direct {p0}, Ljg/a;->x()Ljg/a;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "channelFactory set already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final f()Ljg/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljg/e<",
            "+TC;>;"
        }
    .end annotation

    iget-object v0, p0, Ljg/a;->b:Ljg/e;

    return-object v0
.end method

.method public abstract g()Ljg/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public abstract h()Ljg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljg/b<",
            "TB;TC;>;"
        }
    .end annotation
.end method

.method public final j()Lio/grpc/netty/shaded/io/netty/channel/m0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Ljg/a;->a:Lio/grpc/netty/shaded/io/netty/channel/m0;

    return-object v0
.end method

.method public k(Lio/grpc/netty/shaded/io/netty/channel/m0;)Ljg/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/m0;",
            ")TB;"
        }
    .end annotation

    const-string v0, "group"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ljg/a;->a:Lio/grpc/netty/shaded/io/netty/channel/m0;

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Ljg/a;->a:Lio/grpc/netty/shaded/io/netty/channel/m0;

    .line 4
    invoke-direct {p0}, Ljg/a;->x()Ljg/a;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "group set already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final l()Lio/grpc/netty/shaded/io/netty/channel/k;
    .locals 1

    iget-object v0, p0, Ljg/a;->f:Lio/grpc/netty/shaded/io/netty/channel/k;

    return-object v0
.end method

.method public m(Lio/grpc/netty/shaded/io/netty/channel/k;)Ljg/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/netty/shaded/io/netty/channel/k;",
            ")TB;"
        }
    .end annotation

    const-string v0, "handler"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/channel/k;

    iput-object p1, p0, Ljg/a;->f:Lio/grpc/netty/shaded/io/netty/channel/k;

    .line 2
    invoke-direct {p0}, Ljg/a;->x()Ljg/a;

    move-result-object p1

    return-object p1
.end method

.method abstract n(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method final o()Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Ljg/a;->b:Ljg/e;

    invoke-interface {v1}, Ljg/e;->a()Lio/grpc/netty/shaded/io/netty/channel/e;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Ljg/a;->n(Lio/grpc/netty/shaded/io/netty/channel/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Ljg/a;->h()Ljg/b;

    move-result-object v1

    invoke-virtual {v1}, Ljg/b;->c()Lio/grpc/netty/shaded/io/netty/channel/m0;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/grpc/netty/shaded/io/netty/channel/m0;->i0(Lio/grpc/netty/shaded/io/netty/channel/e;)Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Lug/q;->L()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->O()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/v;->close()Lio/grpc/netty/shaded/io/netty/channel/i;

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->V()V

    :cond_1
    :goto_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lio/grpc/netty/shaded/io/netty/channel/e;->k0()Lio/grpc/netty/shaded/io/netty/channel/e$a;

    move-result-object v2

    invoke-interface {v2}, Lio/grpc/netty/shaded/io/netty/channel/e$a;->V()V

    .line 9
    new-instance v2, Lio/grpc/netty/shaded/io/netty/channel/f0;

    sget-object v3, Lug/s;->q:Lug/s;

    invoke-direct {v2, v0, v3}, Lio/grpc/netty/shaded/io/netty/channel/f0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    invoke-virtual {v2, v1}, Lio/grpc/netty/shaded/io/netty/channel/f0;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0

    .line 10
    :cond_2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/channel/f0;

    new-instance v2, Ljg/f;

    invoke-direct {v2}, Ljg/f;-><init>()V

    sget-object v3, Lug/s;->q:Lug/s;

    invoke-direct {v0, v2, v3}, Lio/grpc/netty/shaded/io/netty/channel/f0;-><init>(Lio/grpc/netty/shaded/io/netty/channel/e;Lug/j;)V

    invoke-virtual {v0, v1}, Lio/grpc/netty/shaded/io/netty/channel/f0;->u(Ljava/lang/Throwable;)Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object v0

    return-object v0
.end method

.method final p()Ljava/net/SocketAddress;
    .locals 1

    iget-object v0, p0, Ljg/a;->c:Ljava/net/SocketAddress;

    return-object v0
.end method

.method final q()[Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/util/e<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljg/a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljg/a;->r(Ljava/util/Map;)[Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method final s()[Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljg/a;->d:Ljava/util/Map;

    invoke-static {v0}, Ljg/a;->t(Ljava/util/Map;)[Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p0}, Lio/grpc/netty/shaded/io/netty/util/internal/b0;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljg/a;->h()Ljg/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lio/grpc/netty/shaded/io/netty/channel/r;Ljava/lang/Object;)Ljg/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "TT;>;TT;)TB;"
        }
    .end annotation

    const-string v0, "option"

    .line 1
    invoke-static {p1, v0}, Lio/grpc/netty/shaded/io/netty/util/internal/s;->h(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ljg/a;->d:Ljava/util/Map;

    monitor-enter v0

    if-nez p2, :cond_0

    .line 3
    :try_start_0
    iget-object p2, p0, Ljg/a;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ljg/a;->d:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0}, Ljg/a;->x()Ljg/a;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final v()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/channel/r<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljg/a;->d:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ljg/a;->d:Ljava/util/Map;

    invoke-static {v1}, Ljg/a;->i(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public w()Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljg/a;->B()Ljg/a;

    .line 2
    invoke-virtual {p0}, Ljg/a;->o()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object v0

    return-object v0
.end method
