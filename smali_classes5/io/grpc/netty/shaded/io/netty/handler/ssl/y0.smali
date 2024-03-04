.class Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/netty/shaded/io/netty/internal/tcnative/SSLSessionCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;
    }
.end annotation


# static fields
.field private static final e:[Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

.field private static final f:I


# instance fields
.field private final a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    .line 1
    sput-object v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->e:[Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    const-string v0, "javax.net.ssl.sessionCacheSize"

    const/16 v1, 0x5000

    .line 2
    invoke-static {v0, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/c0;->e(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 3
    sput v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->f:I

    goto :goto_0

    .line 4
    :cond_0
    sput v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->f:I

    :goto_0
    return-void
.end method

.method constructor <init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$a;

    invoke-direct {v0, p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$a;-><init>(Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    sget v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->f:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    iput-object p1, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->a:Lio/grpc/netty/shaded/io/netty/handler/ssl/p0;

    return-void
.end method

.method static synthetic a(Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private h(Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->j(Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;)V

    .line 2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->h()V

    return-void
.end method


# virtual methods
.method declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 5
    invoke-direct {p0, v1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->h(Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final d()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->e:[Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 6
    invoke-interface {v4}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v4}, Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catchall_0
    move-exception v0

    .line 8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final declared-synchronized e(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)Lio/grpc/netty/shaded/io/netty/handler/ssl/x0;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;->c()Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->i(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    .line 5
    :cond_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final f()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method final g()I
    .locals 1

    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method final declared-synchronized i(Lio/grpc/netty/shaded/io/netty/handler/ssl/a1;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->h(Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected j(Lio/grpc/netty/shaded/io/netty/handler/ssl/y0$b;)V
    .locals 0

    return-void
.end method

.method k(JLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method final l(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    int-to-long v0, v0

    int-to-long v2, p1

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    if-nez p1, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->b()V

    :cond_1
    return-void
.end method

.method final m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    if-le v0, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/netty/shaded/io/netty/handler/ssl/y0;->b()V

    :cond_0
    return-void
.end method
