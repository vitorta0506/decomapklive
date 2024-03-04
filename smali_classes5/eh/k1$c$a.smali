.class Leh/k1$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/k1$c;-><init>(Leh/k1;JLjava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/t;Lcom/google/common/base/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leh/k1;

.field final synthetic b:Lcom/google/common/base/w;

.field final synthetic c:Leh/k1$c;


# direct methods
.method constructor <init>(Leh/k1$c;Leh/k1;Lcom/google/common/base/w;)V
    .locals 0

    iput-object p1, p0, Leh/k1$c$a;->c:Leh/k1$c;

    iput-object p2, p0, Leh/k1$c$a;->a:Leh/k1;

    iput-object p3, p0, Leh/k1$c$a;->b:Lcom/google/common/base/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Leh/k1$c$a;->c:Leh/k1$c;

    iget-object v0, v0, Leh/k1$c;->l:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Leh/k1$c$a;->c:Leh/k1$c;

    iget-boolean v2, v1, Leh/k1$c;->n:Z

    if-nez v2, :cond_0

    .line 3
    iget-object v1, v1, Leh/k1$c;->o:Leh/k1;

    invoke-static {v1}, Leh/k1;->e(Leh/k1;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Leh/k1$c$a;->c:Leh/k1$c;

    iget-object v1, p0, Leh/k1$c$a;->b:Lcom/google/common/base/w;

    invoke-interface {v1}, Lcom/google/common/base/w;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/g;

    invoke-virtual {v0, v1}, Lio/grpc/internal/z;->n(Lio/grpc/g;)V

    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
