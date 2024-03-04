.class Lio/grpc/alts/internal/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/stub/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/alts/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/stub/h<",
        "Lio/grpc/alts/internal/HandshakerResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/grpc/alts/internal/i;


# direct methods
.method private constructor <init>(Lio/grpc/alts/internal/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/alts/internal/i$b;->a:Lio/grpc/alts/internal/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/alts/internal/i;Lio/grpc/alts/internal/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/grpc/alts/internal/i$b;-><init>(Lio/grpc/alts/internal/i;)V

    return-void
.end method


# virtual methods
.method public b(Lio/grpc/alts/internal/HandshakerResp;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/alts/internal/i$b;->a:Lio/grpc/alts/internal/i;

    invoke-static {v0}, Lio/grpc/alts/internal/i;->a(Lio/grpc/alts/internal/i;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object p1, p0, Lio/grpc/alts/internal/i$b;->a:Lio/grpc/alts/internal/i;

    invoke-static {p1}, Lio/grpc/alts/internal/i;->b(Lio/grpc/alts/internal/i;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Received an unexpected response."

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Lio/grpc/alts/internal/i$b;->a:Lio/grpc/alts/internal/i;

    invoke-virtual {p1}, Lio/grpc/alts/internal/i;->c()V

    :goto_0
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/i$b;->a:Lio/grpc/alts/internal/i;

    invoke-static {v0}, Lio/grpc/alts/internal/i;->b(Lio/grpc/alts/internal/i;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Response stream closed."

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/grpc/alts/internal/i$b;->a:Lio/grpc/alts/internal/i;

    invoke-static {v1}, Lio/grpc/alts/internal/i;->a(Lio/grpc/alts/internal/i;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/i$b;->a:Lio/grpc/alts/internal/i;

    invoke-static {v0}, Lio/grpc/alts/internal/i;->b(Lio/grpc/alts/internal/i;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received a terminating error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lio/grpc/alts/internal/i$b;->a:Lio/grpc/alts/internal/i;

    invoke-static {v0}, Lio/grpc/alts/internal/i;->a(Lio/grpc/alts/internal/i;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/grpc/alts/internal/HandshakerResp;

    invoke-virtual {p0, p1}, Lio/grpc/alts/internal/i$b;->b(Lio/grpc/alts/internal/HandshakerResp;)V

    return-void
.end method
