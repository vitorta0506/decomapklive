.class final Lio/grpc/internal/l2;
.super Lio/grpc/d;
.source "SourceFile"


# static fields
.field static final g:Lio/grpc/Status;

.field static final h:Lio/grpc/Status;

.field private static final i:Lio/grpc/internal/g0;


# instance fields
.field private final a:Lio/grpc/internal/y0;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Lio/grpc/internal/m;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/d0;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lio/grpc/internal/p$e;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lio/grpc/Status;->u:Lio/grpc/Status;

    const-string v1, "Subchannel is NOT READY"

    .line 2
    invoke-virtual {v0, v1}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v1

    sput-object v1, Lio/grpc/internal/l2;->g:Lio/grpc/Status;

    const-string v2, "wait-for-ready RPC is not supported on Subchannel.asChannel()"

    .line 3
    invoke-virtual {v0, v2}, Lio/grpc/Status;->r(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/l2;->h:Lio/grpc/Status;

    .line 4
    new-instance v0, Lio/grpc/internal/g0;

    sget-object v2, Lio/grpc/internal/ClientStreamListener$RpcProgress;->MISCARRIED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {v0, v1, v2}, Lio/grpc/internal/g0;-><init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;)V

    sput-object v0, Lio/grpc/internal/l2;->i:Lio/grpc/internal/g0;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/y0;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/m;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/y0;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lio/grpc/internal/m;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/grpc/d0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/d;-><init>()V

    .line 2
    new-instance v0, Lio/grpc/internal/l2$a;

    invoke-direct {v0, p0}, Lio/grpc/internal/l2$a;-><init>(Lio/grpc/internal/l2;)V

    iput-object v0, p0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p$e;

    const-string v0, "subchannel"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/y0;

    iput-object p1, p0, Lio/grpc/internal/l2;->a:Lio/grpc/internal/y0;

    const-string p1, "executor"

    .line 4
    invoke-static {p2, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lio/grpc/internal/l2;->b:Ljava/util/concurrent/Executor;

    const-string p1, "deadlineCancellationExecutor"

    .line 5
    invoke-static {p3, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lio/grpc/internal/l2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    const-string p1, "callsTracer"

    .line 6
    invoke-static {p4, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/internal/m;

    iput-object p1, p0, Lio/grpc/internal/l2;->d:Lio/grpc/internal/m;

    const-string p1, "configSelector"

    .line 7
    invoke-static {p5, p1}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lio/grpc/internal/l2;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static synthetic j(Lio/grpc/internal/l2;)Lio/grpc/internal/y0;
    .locals 0

    iget-object p0, p0, Lio/grpc/internal/l2;->a:Lio/grpc/internal/y0;

    return-object p0
.end method

.method static synthetic k()Lio/grpc/internal/g0;
    .locals 1

    sget-object v0, Lio/grpc/internal/l2;->i:Lio/grpc/internal/g0;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/grpc/internal/l2;->a:Lio/grpc/internal/y0;

    invoke-virtual {v0}, Lio/grpc/internal/y0;->O()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lio/grpc/MethodDescriptor;Lio/grpc/c;)Lio/grpc/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TRequestT;TResponseT;>;",
            "Lio/grpc/c;",
            ")",
            "Lio/grpc/g<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/grpc/c;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/grpc/internal/l2;->b:Ljava/util/concurrent/Executor;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lio/grpc/c;->e()Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 2
    invoke-virtual {p2}, Lio/grpc/c;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Lio/grpc/internal/l2$b;

    invoke-direct {p1, p0, v3}, Lio/grpc/internal/l2$b;-><init>(Lio/grpc/internal/l2;Ljava/util/concurrent/Executor;)V

    return-object p1

    .line 4
    :cond_1
    new-instance v0, Lio/grpc/internal/p;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->r:Lio/grpc/c$a;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p2, v1, v2}, Lio/grpc/c;->q(Lio/grpc/c$a;Ljava/lang/Object;)Lio/grpc/c;

    move-result-object v4

    iget-object v5, p0, Lio/grpc/internal/l2;->f:Lio/grpc/internal/p$e;

    iget-object v6, p0, Lio/grpc/internal/l2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v7, p0, Lio/grpc/internal/l2;->d:Lio/grpc/internal/m;

    iget-object p2, p0, Lio/grpc/internal/l2;->e:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Lio/grpc/d0;

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lio/grpc/internal/p;-><init>(Lio/grpc/MethodDescriptor;Ljava/util/concurrent/Executor;Lio/grpc/c;Lio/grpc/internal/p$e;Ljava/util/concurrent/ScheduledExecutorService;Lio/grpc/internal/m;Lio/grpc/d0;)V

    return-object v0
.end method
