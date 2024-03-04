.class Lio/grpc/internal/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/internal/r;


# instance fields
.field final a:Lio/grpc/Status;

.field private final b:Lio/grpc/internal/ClientStreamListener$RpcProgress;


# direct methods
.method constructor <init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/grpc/Status;->p()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/o;->e(ZLjava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lio/grpc/internal/g0;->a:Lio/grpc/Status;

    .line 4
    iput-object p2, p0, Lio/grpc/internal/g0;->b:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    return-void
.end method


# virtual methods
.method public c()Lio/grpc/g0;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a real transport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Lio/grpc/MethodDescriptor;Lio/grpc/s0;Lio/grpc/c;[Lio/grpc/k;)Lio/grpc/internal/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/s0;",
            "Lio/grpc/c;",
            "[",
            "Lio/grpc/k;",
            ")",
            "Lio/grpc/internal/q;"
        }
    .end annotation

    new-instance p1, Lio/grpc/internal/f0;

    iget-object p2, p0, Lio/grpc/internal/g0;->a:Lio/grpc/Status;

    iget-object p3, p0, Lio/grpc/internal/g0;->b:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    invoke-direct {p1, p2, p3, p4}, Lio/grpc/internal/f0;-><init>(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;[Lio/grpc/k;)V

    return-object p1
.end method
