.class public final Lio/grpc/internal/f0;
.super Lio/grpc/internal/o1;
.source "SourceFile"


# instance fields
.field private b:Z

.field private final c:Lio/grpc/Status;

.field private final d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field private final e:[Lio/grpc/k;


# direct methods
.method public constructor <init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;[Lio/grpc/k;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lio/grpc/internal/o1;-><init>()V

    .line 3
    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lio/grpc/internal/f0;->c:Lio/grpc/Status;

    .line 5
    iput-object p2, p0, Lio/grpc/internal/f0;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    .line 6
    iput-object p3, p0, Lio/grpc/internal/f0;->e:[Lio/grpc/k;

    return-void
.end method

.method public constructor <init>(Lio/grpc/Status;[Lio/grpc/k;)V
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/internal/ClientStreamListener$RpcProgress;->PROCESSED:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p0, p1, v0, p2}, Lio/grpc/internal/f0;-><init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;[Lio/grpc/k;)V

    return-void
.end method


# virtual methods
.method public l(Lio/grpc/internal/x0;)V
    .locals 2

    iget-object v0, p0, Lio/grpc/internal/f0;->c:Lio/grpc/Status;

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Lio/grpc/internal/x0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/x0;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/internal/f0;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Lio/grpc/internal/x0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/internal/x0;

    return-void
.end method

.method public o(Lio/grpc/internal/ClientStreamListener;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lio/grpc/internal/f0;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already started"

    invoke-static {v0, v2}, Lcom/google/common/base/o;->A(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lio/grpc/internal/f0;->b:Z

    .line 3
    iget-object v0, p0, Lio/grpc/internal/f0;->e:[Lio/grpc/k;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4
    iget-object v4, p0, Lio/grpc/internal/f0;->c:Lio/grpc/Status;

    invoke-virtual {v3, v4}, Lio/grpc/c1;->i(Lio/grpc/Status;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/f0;->c:Lio/grpc/Status;

    iget-object v1, p0, Lio/grpc/internal/f0;->d:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    new-instance v2, Lio/grpc/s0;

    invoke-direct {v2}, Lio/grpc/s0;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lio/grpc/internal/ClientStreamListener;->d(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/s0;)V

    return-void
.end method
