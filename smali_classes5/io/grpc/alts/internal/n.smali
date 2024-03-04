.class final Lio/grpc/alts/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/grpc/netty/shaded/io/netty/channel/y;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/grpc/alts/internal/n;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lio/grpc/alts/internal/n;->b:Ljava/util/Queue;

    .line 4
    iput p1, p0, Lio/grpc/alts/internal/n;->c:I

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/netty/shaded/io/netty/channel/m;)Lio/grpc/netty/shaded/io/netty/channel/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/n;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lio/grpc/alts/internal/n;->c:I

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 3
    iput v1, p0, Lio/grpc/alts/internal/n;->c:I

    .line 4
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->m()Lio/grpc/netty/shaded/io/netty/channel/i;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Lio/grpc/netty/shaded/io/netty/channel/v;->F()Lio/grpc/netty/shaded/io/netty/channel/y;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lio/grpc/alts/internal/n;->b:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/n;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/alts/internal/n;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/netty/shaded/io/netty/channel/y;

    if-nez v1, :cond_0

    .line 3
    iget v1, p0, Lio/grpc/alts/internal/n;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/grpc/alts/internal/n;->c:I

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v1}, Lio/grpc/netty/shaded/io/netty/channel/y;->m()Lio/grpc/netty/shaded/io/netty/channel/y;

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
