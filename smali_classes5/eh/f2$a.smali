.class Leh/f2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/p1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/f2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/internal/p1<",
        "Leh/p2;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/r;

.field private final b:Leh/j0$b;

.field private final c:Ljava/lang/Object;

.field private d:Ljava/util/concurrent/ScheduledExecutorService;

.field private e:Leh/p2;

.field private f:I


# direct methods
.method constructor <init>(Leh/j0$b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/grpc/r;->e:Lio/grpc/r;

    iput-object v0, p0, Leh/f2$a;->a:Lio/grpc/r;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leh/f2$a;->c:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leh/j0$b;

    iput-object p1, p0, Leh/f2$a;->b:Leh/j0$b;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leh/f2$a;->c()Leh/p2;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Leh/f2$a;->d(Ljava/lang/Object;)Leh/p2;

    move-result-object p1

    return-object p1
.end method

.method public c()Leh/p2;
    .locals 11

    .line 1
    iget-object v0, p0, Leh/f2$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Leh/f2$a;->f:I

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lio/grpc/internal/GrpcUtil;->u:Lio/grpc/internal/f2$d;

    invoke-static {v1}, Lio/grpc/internal/f2;->d(Lio/grpc/internal/f2$d;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v1, p0, Leh/f2$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    new-instance v1, Leh/n0;

    sget-object v3, Leh/n0$r;->a:Leh/n0$r;

    iget-object v4, p0, Leh/f2$a;->b:Leh/j0$b;

    iget-object v5, p0, Leh/f2$a;->a:Lio/grpc/r;

    iget-object v6, p0, Leh/f2$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lio/grpc/internal/e0$a;

    invoke-direct {v7}, Lio/grpc/internal/e0$a;-><init>()V

    sget-object v8, Lio/grpc/internal/GrpcUtil;->v:Lcom/google/common/base/w;

    sget-object v9, Lio/grpc/internal/m2;->a:Lio/grpc/internal/m2;

    new-instance v10, Lih/g;

    iget-object v2, p0, Leh/f2$a;->b:Leh/j0$b;

    invoke-direct {v10, v2}, Lih/g;-><init>(Leh/j0$b;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Leh/n0;-><init>(Leh/n0$r;Leh/j0$b;Lio/grpc/r;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/k$a;Lcom/google/common/base/w;Lio/grpc/internal/m2;Leh/k2;)V

    iput-object v1, p0, Leh/f2$a;->e:Leh/p2;

    .line 5
    :cond_0
    iget v1, p0, Leh/f2$a;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Leh/f2$a;->f:I

    .line 6
    iget-object v1, p0, Leh/f2$a;->e:Leh/p2;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d(Ljava/lang/Object;)Leh/p2;
    .locals 3

    .line 1
    iget-object p1, p0, Leh/f2$a;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget v0, p0, Leh/f2$a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Leh/f2$a;->f:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Leh/f2$a;->e:Leh/p2;

    invoke-virtual {v0}, Leh/p2;->s()V

    .line 4
    iput-object v1, p0, Leh/f2$a;->e:Leh/p2;

    .line 5
    sget-object v0, Lio/grpc/internal/GrpcUtil;->u:Lio/grpc/internal/f2$d;

    iget-object v2, p0, Leh/f2$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v2}, Lio/grpc/internal/f2;->f(Lio/grpc/internal/f2$d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Leh/f2$a;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_0
    monitor-exit p1

    return-object v1

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
