.class Leh/k1$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leh/k1$d;->e(Lio/grpc/g$a;Lio/grpc/s0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/g$a;

.field final synthetic b:Leh/k1$d;


# direct methods
.method constructor <init>(Leh/k1$d;Lio/grpc/g$a;)V
    .locals 0

    iput-object p1, p0, Leh/k1$d$a;->b:Leh/k1$d;

    iput-object p2, p0, Leh/k1$d$a;->a:Lio/grpc/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Leh/k1$d$a;->b:Leh/k1$d;

    iget-object v0, v0, Leh/k1$d;->c:Lio/grpc/r;

    invoke-virtual {v0}, Lio/grpc/r;->c()Lio/grpc/r;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Leh/k1$d$a;->a:Lio/grpc/g$a;

    iget-object v2, p0, Leh/k1$d$a;->b:Leh/k1$d;

    iget-object v2, v2, Leh/k1$d;->a:Lio/grpc/Status;

    new-instance v3, Lio/grpc/s0;

    invoke-direct {v3}, Lio/grpc/s0;-><init>()V

    invoke-virtual {v1, v2, v3}, Lio/grpc/g$a;->a(Lio/grpc/Status;Lio/grpc/s0;)V

    .line 3
    iget-object v1, p0, Leh/k1$d$a;->b:Leh/k1$d;

    iget-object v1, v1, Leh/k1$d;->d:Leh/k1;

    invoke-static {v1}, Leh/k1;->e(Leh/k1;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v1, p0, Leh/k1$d$a;->b:Leh/k1$d;

    iget-object v1, v1, Leh/k1$d;->c:Lio/grpc/r;

    invoke-virtual {v1, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Leh/k1$d$a;->b:Leh/k1$d;

    iget-object v2, v2, Leh/k1$d;->c:Lio/grpc/r;

    invoke-virtual {v2, v0}, Lio/grpc/r;->k(Lio/grpc/r;)V

    throw v1
.end method
