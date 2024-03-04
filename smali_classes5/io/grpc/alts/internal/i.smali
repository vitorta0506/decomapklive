.class Lio/grpc/alts/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/alts/internal/i$b;
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/stub/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/h<",
            "Lio/grpc/alts/internal/HandshakerResp;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lio/grpc/stub/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/h<",
            "Lio/grpc/alts/internal/HandshakerReq;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lio/grpc/alts/internal/t$d;

.field private final d:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/google/common/base/Optional<",
            "Lio/grpc/alts/internal/HandshakerResp;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/alts/internal/t$d;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/alts/internal/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/alts/internal/i$b;-><init>(Lio/grpc/alts/internal/i;Lio/grpc/alts/internal/i$a;)V

    iput-object v0, p0, Lio/grpc/alts/internal/i;->a:Lio/grpc/stub/h;

    .line 3
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/grpc/alts/internal/i;->d:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/grpc/alts/internal/i;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    iput-object p1, p0, Lio/grpc/alts/internal/i;->c:Lio/grpc/alts/internal/t$d;

    return-void
.end method

.method static synthetic a(Lio/grpc/alts/internal/i;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/i;->d:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/alts/internal/i;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lio/grpc/alts/internal/i;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/i;->b:Lio/grpc/stub/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/alts/internal/i;->c:Lio/grpc/alts/internal/t$d;

    const-wide/16 v1, 0x14

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lio/grpc/stub/b;->d(JLjava/util/concurrent/TimeUnit;)Lio/grpc/stub/b;

    move-result-object v0

    check-cast v0, Lio/grpc/alts/internal/t$d;

    iget-object v1, p0, Lio/grpc/alts/internal/i;->a:Lio/grpc/stub/h;

    invoke-virtual {v0, v1}, Lio/grpc/alts/internal/t$d;->i(Lio/grpc/stub/h;)Lio/grpc/stub/h;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/alts/internal/i;->b:Lio/grpc/stub/h;

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/i;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lio/grpc/alts/internal/i;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/alts/internal/i;->b:Lio/grpc/stub/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lio/grpc/stub/h;->onCompleted()V

    :cond_0
    return-void
.end method

.method public f(Lio/grpc/alts/internal/HandshakerReq;)Lio/grpc/alts/internal/HandshakerResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/alts/internal/i;->d()V

    .line 2
    invoke-direct {p0}, Lio/grpc/alts/internal/i;->e()V

    .line 3
    iget-object v0, p0, Lio/grpc/alts/internal/i;->d:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/alts/internal/i;->b:Lio/grpc/stub/h;

    invoke-interface {v0, p1}, Lio/grpc/stub/h;->onNext(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lio/grpc/alts/internal/i;->d:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Optional;

    .line 6
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0}, Lio/grpc/alts/internal/i;->e()V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/alts/internal/HandshakerResp;

    return-object p1

    .line 9
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Received an unexpected response."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
