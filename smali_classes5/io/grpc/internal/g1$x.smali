.class final Lio/grpc/internal/g1$x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "x"
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/q;",
            ">;"
        }
    .end annotation
.end field

.field c:Lio/grpc/Status;

.field final synthetic d:Lio/grpc/internal/g1;


# direct methods
.method private constructor <init>(Lio/grpc/internal/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/internal/g1$x;->d:Lio/grpc/internal/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/g1$x;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/g1$x;->b:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/g1;Lio/grpc/internal/g1$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lio/grpc/internal/g1$x;-><init>(Lio/grpc/internal/g1;)V

    return-void
.end method


# virtual methods
.method a(Lio/grpc/internal/z1;)Lio/grpc/Status;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/z1<",
            "*>;)",
            "Lio/grpc/Status;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$x;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/g1$x;->c:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/g1$x;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method b(Lio/grpc/Status;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$x;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/g1$x;->c:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iput-object p1, p0, Lio/grpc/internal/g1$x;->c:Lio/grpc/Status;

    .line 5
    iget-object v1, p0, Lio/grpc/internal/g1$x;->b:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 7
    iget-object v0, p0, Lio/grpc/internal/g1$x;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->u(Lio/grpc/internal/g1;)Lio/grpc/internal/a0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/a0;->g(Lio/grpc/Status;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method c(Lio/grpc/Status;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lio/grpc/internal/g1$x;->b(Lio/grpc/Status;)V

    .line 2
    iget-object v0, p0, Lio/grpc/internal/g1$x;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/g1$x;->b:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/q;

    .line 6
    invoke-interface {v1, p1}, Lio/grpc/internal/q;->e(Lio/grpc/Status;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/g1$x;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->u(Lio/grpc/internal/g1;)Lio/grpc/internal/a0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/a0;->b(Lio/grpc/Status;)V

    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method d(Lio/grpc/internal/z1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/z1<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/internal/g1$x;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/g1$x;->b:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lio/grpc/internal/g1$x;->b:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lio/grpc/internal/g1$x;->c:Lio/grpc/Status;

    .line 5
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/grpc/internal/g1$x;->b:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lio/grpc/internal/g1$x;->d:Lio/grpc/internal/g1;

    invoke-static {v0}, Lio/grpc/internal/g1;->u(Lio/grpc/internal/g1;)Lio/grpc/internal/a0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/a0;->g(Lio/grpc/Status;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
