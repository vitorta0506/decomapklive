.class final Lug/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lug/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lug/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lug/s;

    return-void
.end method

.method constructor <init>(Lug/s;)V
    .locals 0

    iput-object p1, p0, Lug/s$c;->a:Lug/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lug/s$c;->a:Lug/s;

    invoke-virtual {v0}, Lug/s;->R()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 3
    invoke-static {}, Lug/s;->M()Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;

    move-result-object v2

    const-string v3, "Unexpected exception from the global event executor: "

    invoke-interface {v2, v3, v1}, Lio/grpc/netty/shaded/io/netty/util/internal/logging/b;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :goto_1
    iget-object v1, p0, Lug/s$c;->a:Lug/s;

    iget-object v1, v1, Lug/s;->i:Lug/e0;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lug/s$c;->a:Lug/s;

    iget-object v1, v0, Lug/d;->d:Lio/grpc/netty/shaded/io/netty/util/internal/v;

    .line 6
    iget-object v0, v0, Lug/s;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 7
    :cond_2
    iget-object v1, p0, Lug/s$c;->a:Lug/s;

    invoke-static {v1}, Lug/s;->N(Lug/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    iget-object v1, p0, Lug/s$c;->a:Lug/s;

    iget-object v1, v1, Lug/s;->h:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    iget-object v1, p0, Lug/s$c;->a:Lug/s;

    invoke-static {v1}, Lug/s;->N(Lug/s;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_2
    return-void
.end method
