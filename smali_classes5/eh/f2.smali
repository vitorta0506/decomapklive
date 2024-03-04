.class final Leh/f2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh/s2$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leh/f2$a;,
        Leh/f2$b;
    }
.end annotation


# instance fields
.field private final a:Leh/j0;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile d:Lio/grpc/internal/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/p1<",
            "Leh/p2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Leh/k0;

    invoke-direct {v0}, Leh/k0;-><init>()V

    invoke-direct {p0, v0}, Leh/f2;-><init>(Leh/j0;)V

    return-void
.end method

.method constructor <init>(Leh/j0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leh/f2;->b:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Leh/f2;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "bootstrapper"

    .line 5
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/j0;

    iput-object p1, p0, Leh/f2;->a:Leh/j0;

    return-void
.end method

.method static c()Leh/f2;
    .locals 1

    invoke-static {}, Leh/f2$b;->a()Leh/f2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Leh/f2;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Lio/grpc/internal/p1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/internal/p1<",
            "Leh/p2;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/grpc/xds/XdsInitializationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Leh/f2;->d:Lio/grpc/internal/p1;

    if-nez v0, :cond_3

    .line 2
    iget-object v1, p0, Leh/f2;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, Leh/f2;->d:Lio/grpc/internal/p1;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Leh/f2;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 5
    iget-object v2, p0, Leh/f2;->a:Leh/j0;

    invoke-virtual {v2, v0}, Leh/j0;->b(Ljava/util/Map;)Leh/j0$b;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Leh/f2;->a:Leh/j0;

    invoke-virtual {v0}, Leh/j0;->a()Leh/j0$b;

    move-result-object v0

    .line 7
    :goto_0
    invoke-virtual {v0}, Leh/j0$b;->g()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    new-instance v2, Leh/f2$a;

    invoke-direct {v2, v0}, Leh/f2$a;-><init>(Leh/j0$b;)V

    iput-object v2, p0, Leh/f2;->d:Lio/grpc/internal/p1;

    move-object v0, v2

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lio/grpc/xds/XdsInitializationException;

    const-string v2, "No xDS server provided"

    invoke-direct {v0, v2}, Lio/grpc/xds/XdsInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    return-object v0
.end method
